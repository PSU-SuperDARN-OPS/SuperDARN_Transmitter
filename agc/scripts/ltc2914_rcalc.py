# script to calculate resistor values for the LT2914 voltage monitor
# jtklein@alaska.edu
# mit license
from __future__ import division

I_n = [100e-6, 100e-6, 100e-6, 100e-6]
vref = .5

Vn = [400, 3, 3, 12]
Vuv = [320, 1.5, 1.5, 9]
Vov = [500, 7, 7, 16]

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
