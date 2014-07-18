import argparse
import serial


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

def send_cmd(cmd, channel, payload):
    return r

def open_mimic(port = '/dev/ttyACM0'):
   return serial.Serial(port, '9600', timeout=1)

if __name__ == '__main__':
    mimic = open_mimic()
    
        

    mimic.close()




