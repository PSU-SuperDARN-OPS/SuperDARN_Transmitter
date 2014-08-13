import argparse
import serial
import pdb
import time

SETFREQ = 20
SETPHASE = 30
SYNCPHASE = 40
SETIPP = 71
SETPLEN = 72
SETPULSE = 73
SETTRGAP = 74
ENABLE = 50
DISABLE = 60
ACK = 5
NAK = 6

PORT0 = 0
PORT1 = 1
BOTHPORTS = 2

def send_cmd(mimic, cmd, channel, payload):
    mimic.flushInput()
    command = chr(cmd) + chr(channel) + chr(payload >> 8) + chr(payload & 0xff)
    mimic.write(command)
    time.sleep(.01)
    rval = mimic.read(5)
    return rval

def open_mimic(port = '/dev/ttyACM0'):
   return serial.Serial(port, '9600', timeout=1)

def set_phase(mimic, channel, value):
    send_cmd(mimic, SETPHASE, channel, value % 360)

def set_freq(mimic, channel, value):
    send_cmd(mimic, SETFREQ, channel, value)

def sync_phase(mimic):
    send_cmd(mimic, SYNCPHASE, 0, 0)

'''
SETIPP = 71
SETPLEN = 72
SETPULSE = 73
SETTRGAP = 74
ENABLE = 50
DISABLE = 60
'''

if __name__ == '__main__':
    mimic = open_mimic()
    i = 0

    set_freq(mimic, BOTHPORTS, 10000)
    while(1): 
        set_phase(mimic, 0, i)
        i = (i + 1) % 360
        time.sleep(.10)

    mimic.close()




