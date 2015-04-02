# scripts to automate elevation angle tests

from scan_automation import *
from mimic_ctl import *
from csv_utils import *

import argparse
import numpy as np
import time
import argparse

NORMALSCAN_KILL_DELAY = 10
NORMALSCAN_STARTUP_DELAY = 30
PHASE_CHANGE_DELAY = 10

if __name__ == '__main__':
    radar = 'mcm-lnx'
    qnxradar = 'mcm-qnx'
    datadir = 'elevdata/jef/into-recv-card-only-third-time/'


    user = 'radar'
    stid = 'mcm'
    mimicrange = 16  # get mimic delay value from sps site.ini and plug in here
    main_cards = [8]
    int_cards = [18]
    beams = [8]

    #testfreqs = np.arange(9e3, 13e3, 1e3) # kHz
    #testphases = np.arange(0, 365 , 10) # degrees
    testfreqs = [9e3,11e3,12e3,13e3] # kHz
    testphases = [0.,90.,180.] # degrees

    # init mimic
    ser_mimic = open_mimic()
    set_mimicrange(qnxradar, 'root', mimicrange)
    
    # create csv file
    csv_file = create_elevcsv(datadir, main_cards, int_cards, testfreqs, testphases, beams)

    # stop scheduler to avoid fighting over control of scans
    stop_schedule(radar, user)
    start_radar_nosched(radar, user)

    # iterate over each center frequency and test phase..
    for f in testfreqs:
        # set the mimic and scan program for a new frequency
        for b in beams:
            stop_normalscan(radar, user)
            time.sleep(NORMALSCAN_KILL_DELAY)

            start_normalscan(radar, user, stid, fixfreq = f, beam = [b], xcf = True)
            time.sleep(NORMALSCAN_STARTUP_DELAY)

            for p in testphases:
                # set the mimic for the desired phase offset
                set_phase_diff(ser_mimic, f, p)
                time.sleep(PHASE_CHANGE_DELAY)
                
                # grab latest dmap record from linux machine
                dumpstring = get_dmapdumpstring(radar, user)
                dmapdata = parse_dmapdumpstring(dumpstring)

                # write elevation to csv file..
                if mimicrange in dmapdata['slist']:
                    mimicidx = dmapdata['slist'].index(mimicrange) 
                    elv = dmapdata['elv'][mimicidx]
                    phi0 = dmapdata['phi0'][mimicidx]
                    append_elevcsvfile(csv_file, f, p, elv, b, phi0)
                else:
                    append_elevcsvfile(csv_file, f, p, -1000, b)
                


    close_elevcsv(csv_file)
    ser_mimic.close()
    stop_normalscan(radar)
