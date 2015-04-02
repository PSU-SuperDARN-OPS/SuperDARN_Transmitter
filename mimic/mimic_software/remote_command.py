import subprocess
import time
import pdb
import signal
TIMEOUT = 4

class Alarm(Exception):
    pass

def alarm_handler(signum, frame):
    raise Exception("command timed out")

signal.signal(signal.SIGALRM, alarm_handler)


# runs a command over ssh, returns response
# TODO: change to pipe commands into ssh -T
def remote_command(user, radar, command, verbose = True):
    commandecho = subprocess.Popen(['echo', command], stdout=subprocess.PIPE)

    try:
        signal.alarm(TIMEOUT)
        failed = True
        out = ''
        cmdlist = ["ssh", '-T', user + '@' + radar]
        s = subprocess.Popen(cmdlist, stdin = commandecho.stdout, stdout = subprocess.PIPE, stderr = subprocess.PIPE)
        commandecho.stdout.close()
        if verbose:
            print ' '.join(cmdlist) + ' ' + command
        out, err = s.communicate()
    except:
        print 'command ' + command + ' radar ' + radar + ' failed' 
    
    signal.alarm(0)	
    return out

if __name__ == '__main__':
    pass
