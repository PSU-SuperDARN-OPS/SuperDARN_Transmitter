import re
from remote_command import remote_command
import time

# scripts to start/stop scans on a superdarn radar..
VECTOR_SPLITTER = 'short|float|int|char'
ELEM_SPLITTER = '\n|\t'

# stop scheduled operation
def stop_schedule(radar, user = 'radar'):
    remote_command(user, radar, 'pkill schedule')
    remote_command(user, radar, 'pkill normalsound')
    remote_command(user, radar, 'pkill normalscan')
    remote_command(user, radar, 'pkill themisscan')
    time.sleep(.5)

# resume scheduled operation
def start_schedule(radar, user = 'radar'):
    remote_command(user, radar, 'stop.radar')
    time.sleep(1)
    remote_command(user, radar, 'start.radar')
    time.sleep(1)

def start_radar_nosched(radar, user = 'radar'):
    remote_command(user, radar, 'stop.radar')
    time.sleep(1)
    remote_command(user, radar, 'start.radar.noscd')
    time.sleep(1)


def stop_normalscan(radar, user = 'radar', ctrlprogram = 'normalscan'):
    remote_command(user, radar, 'pkill ' + ctrlprogram)
    time.sleep(1)

def start_normalscan(radar, user, stid, ctrlprogram = 'normalscan', fixfreq = 0, xcf = False, channel = 1, beam = None):
    scancmd = [ctrlprogram]
    scancmd.append('-stid')
    scancmd.append(stid)

    scancmd.append('-fast')
    scancmd.append('-nowait')
    scancmd.append('-c')
    scancmd.append(str(int(channel)))
    scancmd.append('-ep')
    scancmd.append('41000')
    scancmd.append('-sp')
    scancmd.append('41001')
    scancmd.append('-bp')
    scancmd.append('41100')

    if beam:
        scancmd.append('-sb')
        scancmd.append(str(beam[0]))
        scancmd.append('-eb')
        scancmd.append(str(beam[-1]))

    if fixfreq:
        scancmd.append('-fixfrq')
        scancmd.append(str(int(fixfreq)))
    if xcf:
        scancmd.append('-xcf')
        scancmd.append('1')
    
    command = ' '.join(scancmd)
    remote_command(user, radar, command)

def set_mimicrange(radar, user, gate):
    pass

# grabs the tail off a dmap dump of a fitacf from a remote radar 
def get_dmapdumpstring(radar, user = 'radar', lines = 200):
    if 'sps' in radar:
        return remote_command(user, radar, 'dmapdump -d /data/ros/fitacf/`ls -t /data/ros/fitacf/| head -1` | tail -n ' + str(int(lines)))
    return remote_command(user, radar, 'dmapdump -d /data/ros/fit/`ls -t /data/ros/fit/| head -1` | tail -n ' + str(int(lines)))

# gets data from latest dmapdump, load variables into dict, return dict 
# grab the last 200 lines or so to ensure a full record
def parse_dmapdumpstring(dumpstring): 
    scandata = {}
    scan = dumpstring.split('scalars:')[-1].split('arrays:')
    scalars = scan[0].split('\n')
    vectors = re.split(VECTOR_SPLITTER, scan[1])
    for scalar in scalars:
        if scalar == '':
            continue
        assignment = scalar.split('\t')[-1].split(' = ')
        var = assignment[0].lstrip('"').rstrip('"')
        value = eval(assignment[1])
        scandata[var] = value
    for vector in vectors:
        vector = vector.split('=')

        if len(vector) <= 1:
            continue
        var = vector[0].split('"')[1]
        vecvalue = []
        for v in re.split(ELEM_SPLITTER, vector[1]): 
            v = v.rstrip(',')
            if v == '':
                continue
            if v == 'inf' or v == 'nan' or v == '-nan':
                v = 'float("NaN")' 
            try:
                vecvalue.append(eval(v))
            except:
                import pdb
                pdb.set_trace()
        scandata[var] = vecvalue
    return scandata

def main():
    radar = 'mcm-lnx'
    user = 'radar'
    stid = 'mcm'
    scanstring = get_dmapdumpstring(radar)
    scandict = parse_dmapdumpstring(scanstring)

    start_normalscan(radar, user, stid, ctrlprogram = 'normalscan', fixfreq = 12000, xcf = True, channel = 1, beam = [7])
    
if __name__ == '__main__':
    main()

