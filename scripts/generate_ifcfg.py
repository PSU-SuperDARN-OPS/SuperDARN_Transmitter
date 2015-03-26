# generates ifcfg files for USRP x300s

import string

PORTS_PER_CARD = 4
SUBNET_BASE = 41

interface_bases = ['enp4s0f', 'enp9s0f', 'enp10s0f', 'enp11s0f']

macaddrs = ['68:05:ca:32:39:38',\
            '68:05:ca:32:39:39',\
            '68:05:ca:32:39:3a',\
            '68:05:ca:32:39:3b',\
            '68:05:ca:32:36:d0',\
            '68:05:ca:32:36:d1',\
            '68:05:ca:32:36:d2',\
            '68:05:ca:32:36:d3',\
            '68:05:ca:32:38:08',\
            '68:05:ca:32:38:09',\
            '68:05:ca:32:38:0a',\
            '68:05:ca:32:38:0b',\
            '68:05:ca:32:38:68',\
            '68:05:ca:32:38:69',\
            '68:05:ca:32:38:6a',\
            '68:05:ca:32:38:6b']


ifcfg_template = '''
TYPE="Ethernet"
BOOTPROTO="none"
IPADDR0="192.168.$SUBNET.1"
DEFROUTE="yes"
IPV4_FAILURE_FATAL="no"
IPV6INIT="no"
IPV6_FAILURE_FATAL="no"
NAME="$NETWORKINTERFACE"
BOOTPROTO="none"
ONBOOT="yes"
HWADDR"$MACADDR"
PEERDNS="yes"
PEERROUTES="yes"
ZONE="trusted"
MTU="3500"
NM_MANAGED="no"
'''

interfaces = [ibase + str(p) for ibase in interface_bases for p in range(PORTS_PER_CARD)]

for i, interface in enumerate(interfaces):
        subnet = i + SUBNET_BASE
        macaddr = macaddrs[i]
        ifcfg = string.Template(ifcfg_template)
        ifcfg = ifcfg.substitute(\
                        SUBNET = subnet,\
                        MACADDR = macaddr,\
                        NETWORKINTERFACE = interface)
        f = open('ifcfg-' + interface, 'w')
        f.write(ifcfg)
        f.close()
        
         
        
