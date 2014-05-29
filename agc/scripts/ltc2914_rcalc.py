# script to calculate resistor values for the LT2914 voltage monitor
# jtklein@alaska.edu
# mit license
from __future__ import division

I_n = [50e-6, 100e-6, 100e-6, 100e-6]
vref = .5

Vn = [400, 5, 5, 15]
Vuv = [300, 3.5, 3.5, 12]
Vov = [450, 8, 8, 20]

print '---'
for (i,vn) in enumerate(Vn):
    print 'calculating for Vn: ' + str(vn)
    ra = abs((vref / I_n[i]) + (vn / Vov[i]))
    ina = abs((.5/ra) * (vn / Vov[i]))
    rb = abs((.5 / ina) * (vn / Vuv[i])) - ra
    rc = abs(vn / ina) - ra - rb

    print 'ra:' + str(ra)
    print 'rb:' + str(rb)
    print 'rc:' + str(rc)
    print '---'
