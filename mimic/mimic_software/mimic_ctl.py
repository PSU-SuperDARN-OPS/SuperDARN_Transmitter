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

def enable_pulse(mimic, enable = True):
    send_cmd(mimic, SETPULSE, 0, enable)

def mimic_enable(mimic):
    send_cmd(mimic, ENABLE, 0, 0)

def mimic_disable(mimic):
    send_cmd(mimic, DISABLE, 0, 0)

# ipp, plen, and trgap in microseconds
def set_pulse(mimic, ipp, plen, trgap):
    send_cmd(mimic, SETIPP, 0, ipp)
    send_cmd(mimic, SETPLEN, 0, plen)
    send_cmd(mimic, SETTRGAP, 0, trgap)

if __name__ == '__main__':
    mimic = open_mimic()
    
    set_freq(mimic, BOTHPORTS, 10000)
    set_phase(mimic, BOTHPORTS, 0)
    set_pulse(mimic, 10000, 1500, 25)
    enable_pulse(mimic, True)
    mimic.close()




