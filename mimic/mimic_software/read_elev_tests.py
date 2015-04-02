from csv_utils import *
import numpy as np
import matplotlib.pyplot as plt
import pdb

c = 3e8

HWDAT_DIR = '/home/radar/SuperDARN_MSI_ROS/linux/home/radar/ros.3.6/tables/superdarn/hdw/'
HWDAT_PREFIX = 'hdw.dat.'

# calculates expected elevation angle
# see /home/kleinjt/repos/RSTLite/codebase/superdarn/src.lib/tk/fitacf.2.5/src/elevation.c
# reads from  hdw dat files to get radar information
# mostly a python port of fitacf.2.5/src/elevation.c,
def expected_elevation(radar, freq, phi0, bmnum):
    # read in radar information from the hdw dat file
    freq = freq * 1e3 # convert freq in kHz to freq in hz

    hwdat_file = open(HWDAT_DIR + HWDAT_PREFIX + radar, 'r')

    line = hwdat_file.readline()
    while('#' in line): 
        line = hwdat_file.readline()
    
    line = line.split()
    bmsep = float(line[7])
    tdiff = float(line[10]) # microseconds
    phase_sign = float(line[11])
    x_offset = float(line[12]) # x is x axis, direction parallel to the main array, positive is right looking along boresight
    y_offset = float(line[13]) # y is boresight direction, +y is in front of array
    z_offset = float(line[14]) # z is vertical displacement, with +z is up
    maxbeam = int(line[18])
    hwdat_file.close()
    
    if y_offset > 0:
        phi_sign = 1
    else:
        phi_sign = -1

    # calculate elevation angle..
    k = 2 * np.pi * freq / c
    offset = maxbeam / 2.0 - 0.5
    phi = bmsep * (bmnum - offset) * np.pi / 180.0 # beam direction off boresight, rad

    dchi_cable = - 2 * np.pi * freq * tdiff * 1.0e-6 # phase shift caused by cables, degrees
    antenna_separation = np.sqrt(x_offset ** 2 + y_offset ** 2 + z_offset ** 2)
    elev_corr = phi_sign * np.arcsin( y_offset / antenna_separation);

    chi_max = phi_sign * k * antenna_separation * np.cos(phi) + dchi_cable 

    phi_temp = phi0 + 2* np.pi * np.floor( (chi_max - phi0)/ (2 * np.pi));

    if (phi_sign < 0.0):
        phi_temp= phi_temp + (2 * np.pi)

    # subtract the cable effect
    psi = phi_temp - dchi_cable
    theta = psi / (k * antenna_separation)
    theta = ((np.cos(phi) ** 2) - (theta ** 2))

    if ( (theta < 0.0) or (abs(theta) > 1.0) ):
        theta = -elev_corr
    else:
        theta = np.arcsin(np.sqrt(theta))

    return 180.0 * (theta + elev_corr)/ np.pi 

def main():
    data = read_elevcsv('elevdata', 'main[6]back[16].csv')
    
    for (i,f) in enumerate(data.frequencies):
        for (j,b) in enumerate(data.beams):
            for (k,p) in enumerate(data.phases):
                elv = expected_elevation('mcm', f, -p, b)
                print str(f) + ' kHz, beam ' + str(b) + ' phase offset ' + str(p)
                print 'expected ' + str(elv) + ' and measured ' + str(data.elevations[i, j, k])
                print 'offset:' + str(elv  - data.elevations[i, j, k])
    print elv

if __name__ == '__main__':
    main()


