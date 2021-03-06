EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:sma
LIBS:usrp_dio-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X15 P1
U 1 1 5511FDEC
P 1950 3550
F 0 "P1" H 1950 4350 50  0000 C CNN
F 1 "CONN_01X15" V 2050 3550 50  0000 C CNN
F 2 "sdtransmitter:182-015-113R531_dsub15" H 1950 3550 60  0001 C CNN
F 3 "" H 1950 3550 60  0000 C CNN
F 4 "Assmann WSW Components" H 1950 3550 60  0001 C CNN "MAN_NAME"
F 5 "A-DS-15-LL/Z" H 1950 3550 60  0001 C CNN "MAN_PN"
F 6 "DigiKey" H 1950 3550 60  0001 C CNN "DIST_NAME"
F 7 "AE10978-ND" H 1950 3550 60  0001 C CNN "DIST_PN"
	1    1950 3550
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 5511FEDD
P 2300 4250
F 0 "#PWR01" H 2300 4100 50  0001 C CNN
F 1 "+3.3V" V 2400 4250 50  0000 C CNN
F 2 "" H 2300 4250 60  0000 C CNN
F 3 "" H 2300 4250 60  0000 C CNN
	1    2300 4250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 5511FF0B
P 2300 2850
F 0 "#PWR02" H 2300 2600 50  0001 C CNN
F 1 "GND" V 2350 2650 50  0000 C CNN
F 2 "" H 2300 2850 60  0000 C CNN
F 3 "" H 2300 2850 60  0000 C CNN
	1    2300 2850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 5511FF20
P 2300 2950
F 0 "#PWR03" H 2300 2700 50  0001 C CNN
F 1 "GND" V 2350 2750 50  0000 C CNN
F 2 "" H 2300 2950 60  0000 C CNN
F 3 "" H 2300 2950 60  0000 C CNN
	1    2300 2950
	0    -1   -1   0   
$EndComp
Text Label 2450 3050 0    60   ~ 0
D11
Text Label 2450 3150 0    60   ~ 0
D10
Text Label 2450 3250 0    60   ~ 0
D9
Text Label 2450 3350 0    60   ~ 0
D8
Text Label 2450 3450 0    60   ~ 0
D7
Text Label 2450 3550 0    60   ~ 0
D6
Text Label 2450 3650 0    60   ~ 0
D5
Text Label 2450 3750 0    60   ~ 0
D4
Text Label 2450 3850 0    60   ~ 0
D3
Text Label 2450 3950 0    60   ~ 0
D2
Text Label 2450 4050 0    60   ~ 0
D1
Text Label 2450 4150 0    60   ~ 0
D0
$Comp
L CONN_02X08 P2
U 1 1 55120078
P 5600 1600
F 0 "P2" H 5600 2050 50  0000 C CNN
F 1 "CONN_02X08" V 5600 1600 50  0000 C CNN
F 2 "lib:conn_8x2" H 5600 400 60  0001 C CNN
F 3 "" H 5600 400 60  0000 C CNN
F 4 "3M" H 5600 1600 60  0001 C CNN "MAN_NAME"
F 5 "30316-6002HB" H 5600 1600 60  0001 C CNN "MAN_PN"
F 6 "DigiKey" H 5600 1600 60  0001 C CNN "DIST_NAME"
F 7 "3M11931-ND" H 5600 1600 60  0001 C CNN "DIST_PN"
	1    5600 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5512016B
P 5950 2050
F 0 "#PWR04" H 5950 1800 50  0001 C CNN
F 1 "GND" H 5950 1900 50  0000 C CNN
F 2 "" H 5950 2050 60  0000 C CNN
F 3 "" H 5950 2050 60  0000 C CNN
	1    5950 2050
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 P5
U 1 1 55120565
P 5250 4050
F 0 "P5" H 5250 4500 50  0000 C CNN
F 1 "CONN_02X08" V 5250 4050 50  0000 C CNN
F 2 "lib:conn_8x2" H 5250 2850 60  0001 C CNN
F 3 "" H 5250 2850 60  0000 C CNN
F 4 "3M" H 5250 4050 60  0001 C CNN "MAN_NAME"
F 5 "30316-6002HB" H 5250 4050 60  0001 C CNN "MAN_PN"
F 6 "DigiKey" H 5250 4050 60  0001 C CNN "DIST_NAME"
F 7 "3M11931-ND" H 5250 4050 60  0001 C CNN "DIST_PN"
	1    5250 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 55120573
P 5600 4500
F 0 "#PWR05" H 5600 4250 50  0001 C CNN
F 1 "GND" H 5600 4350 50  0000 C CNN
F 2 "" H 5600 4500 60  0000 C CNN
F 3 "" H 5600 4500 60  0000 C CNN
	1    5600 4500
	1    0    0    -1  
$EndComp
Text Label 4750 4200 0    60   ~ 0
D9
Text Label 4750 4100 0    60   ~ 0
D8
Text Label 4750 3800 0    60   ~ 0
D11
$Comp
L CONN_02X08 P3
U 1 1 5512076D
P 4100 4050
F 0 "P3" H 4100 4500 50  0000 C CNN
F 1 "CONN_02X08" V 4100 4050 50  0000 C CNN
F 2 "lib:conn_8x2" H 4100 2850 60  0001 C CNN
F 3 "" H 4100 2850 60  0000 C CNN
F 4 "3M" H 4100 4050 60  0001 C CNN "MAN_NAME"
F 5 "30316-6002HB" H 4100 4050 60  0001 C CNN "MAN_PN"
F 6 "DigiKey" H 4100 4050 60  0001 C CNN "DIST_NAME"
F 7 "3M11931-ND" H 4100 4050 60  0001 C CNN "DIST_PN"
	1    4100 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5512077B
P 4450 4500
F 0 "#PWR06" H 4450 4250 50  0001 C CNN
F 1 "GND" H 4450 4350 50  0000 C CNN
F 2 "" H 4450 4500 60  0000 C CNN
F 3 "" H 4450 4500 60  0000 C CNN
	1    4450 4500
	1    0    0    -1  
$EndComp
Text Label 3600 4200 0    60   ~ 0
D9
Text Label 3600 4100 0    60   ~ 0
D8
Text Label 3600 3800 0    60   ~ 0
D10
$Comp
L CONN_02X08 P4
U 1 1 5512093B
P 6750 1600
F 0 "P4" H 6750 2050 50  0000 C CNN
F 1 "CONN_02X08" V 6750 1600 50  0000 C CNN
F 2 "lib:conn_8x2" H 6750 400 60  0001 C CNN
F 3 "" H 6750 400 60  0000 C CNN
F 4 "3M" H 6750 1600 60  0001 C CNN "MAN_NAME"
F 5 "30316-6002HB" H 6750 1600 60  0001 C CNN "MAN_PN"
F 6 "DigiKey" H 6750 1600 60  0001 C CNN "DIST_NAME"
F 7 "3M11931-ND" H 6750 1600 60  0001 C CNN "DIST_PN"
	1    6750 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 55120949
P 7100 2050
F 0 "#PWR07" H 7100 1800 50  0001 C CNN
F 1 "GND" H 7100 1900 50  0000 C CNN
F 2 "" H 7100 2050 60  0000 C CNN
F 3 "" H 7100 2050 60  0000 C CNN
	1    7100 2050
	1    0    0    -1  
$EndComp
Text Label 8350 3950 2    60   ~ 0
D0
Text Label 8350 4450 2    60   ~ 0
D1
Text Label 8400 5650 0    60   ~ 0
D2
Text Label 5800 2700 2    60   ~ 0
D4
Text Label 6450 2500 2    60   ~ 0
D3
Text Label 4750 3900 0    60   ~ 0
D6
Text Label 3600 4400 0    60   ~ 0
D7
Text Label 3600 3900 0    60   ~ 0
D5
$Comp
L 74HC595 U1
U 1 1 5513508C
P 7400 2950
F 0 "U1" H 7550 3550 70  0000 C CNN
F 1 "74HC595" H 7400 2350 70  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 7400 2950 60  0001 C CNN
F 3 "" H 7400 2950 60  0000 C CNN
F 4 "NXP Semiconductors" H 7400 2950 60  0001 C CNN "MAN_NAME"
F 5 "74HC595PW,112" H 7400 2950 60  0001 C CNN "MAN_PN"
F 6 "DigiKey" H 7400 2950 60  0001 C CNN "DIST_NAME"
F 7 "568-8291-5-ND" H 7400 2950 60  0001 C CNN "DIST_PN"
	1    7400 2950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 55135D0F
P 2350 4500
F 0 "#PWR08" H 2350 4350 50  0001 C CNN
F 1 "VCC" H 2350 4650 50  0000 C CNN
F 2 "" H 2350 4500 60  0000 C CNN
F 3 "" H 2350 4500 60  0000 C CNN
	1    2350 4500
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR09
U 1 1 55135DBF
P 7050 4100
F 0 "#PWR09" H 7050 3950 50  0001 C CNN
F 1 "VCC" H 7050 4250 50  0000 C CNN
F 2 "" H 7050 4100 60  0000 C CNN
F 3 "" H 7050 4100 60  0000 C CNN
	1    7050 4100
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 55135E26
P 7050 4350
F 0 "C1" H 7075 4450 50  0000 L CNN
F 1 "22nF" H 7075 4250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7088 4200 30  0001 C CNN
F 3 "" H 7050 4350 60  0000 C CNN
	1    7050 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 55135E77
P 7050 4600
F 0 "#PWR010" H 7050 4350 50  0001 C CNN
F 1 "GND" H 7050 4450 50  0000 C CNN
F 2 "" H 7050 4600 60  0000 C CNN
F 3 "" H 7050 4600 60  0000 C CNN
	1    7050 4600
	1    0    0    -1  
$EndComp
Text Label 6300 1250 2    60   ~ 0
QA
Text Label 6300 1350 2    60   ~ 0
QB
Text Label 6300 1450 2    60   ~ 0
QC
Text Label 6300 1550 2    60   ~ 0
QD
Text Label 6300 1650 2    60   ~ 0
QE
Text Label 6300 1750 2    60   ~ 0
QF
Text Label 6300 1850 2    60   ~ 0
QG
Text Label 6300 1950 2    60   ~ 0
QH
Text Label 5150 1250 2    60   ~ 0
QA
Text Label 5150 1350 2    60   ~ 0
QB
Text Label 5150 1450 2    60   ~ 0
QC
Text Label 5150 1550 2    60   ~ 0
QD
Text Label 5150 1650 2    60   ~ 0
QE
Text Label 5150 1750 2    60   ~ 0
QF
Text Label 5150 1850 2    60   ~ 0
QG
Text Label 5150 1950 2    60   ~ 0
QH
Text Label 8300 2500 0    60   ~ 0
QA
Text Label 8300 2600 0    60   ~ 0
QB
Text Label 8300 2700 0    60   ~ 0
QC
Text Label 8300 2800 0    60   ~ 0
QD
Text Label 8300 2900 0    60   ~ 0
QE
Text Label 8300 3000 0    60   ~ 0
QF
Text Label 8300 3100 0    60   ~ 0
QG
Text Label 8300 3200 0    60   ~ 0
QH
Text Label 4750 4400 0    60   ~ 0
D7
NoConn ~ 8300 3400
NoConn ~ 3850 4000
NoConn ~ 3850 4300
NoConn ~ 5000 4300
NoConn ~ 5000 4000
NoConn ~ 5000 3700
$Comp
L VCC #PWR011
U 1 1 55139310
P 7500 4100
F 0 "#PWR011" H 7500 3950 50  0001 C CNN
F 1 "VCC" H 7500 4250 50  0000 C CNN
F 2 "" H 7500 4100 60  0000 C CNN
F 3 "" H 7500 4100 60  0000 C CNN
	1    7500 4100
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 55139316
P 7500 4350
F 0 "C2" H 7525 4450 50  0000 L CNN
F 1 "22nF" H 7525 4250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7538 4200 30  0001 C CNN
F 3 "" H 7500 4350 60  0000 C CNN
	1    7500 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5513931C
P 7500 4600
F 0 "#PWR012" H 7500 4350 50  0001 C CNN
F 1 "GND" H 7500 4450 50  0000 C CNN
F 2 "" H 7500 4600 60  0000 C CNN
F 3 "" H 7500 4600 60  0000 C CNN
	1    7500 4600
	1    0    0    -1  
$EndComp
Text Notes 3900 3400 0    60   ~ 0
mates with 89116-0101
$Comp
L VCC #PWR013
U 1 1 5547CA1B
P 6450 2800
F 0 "#PWR013" H 6450 2650 50  0001 C CNN
F 1 "VCC" H 6450 2950 50  0000 C CNN
F 2 "" H 6450 2800 60  0000 C CNN
F 3 "" H 6450 2800 60  0000 C CNN
	1    6450 2800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR014
U 1 1 5547CB7F
P 6400 3150
F 0 "#PWR014" H 6400 2900 50  0001 C CNN
F 1 "GND" H 6400 3000 50  0000 C CNN
F 2 "" H 6400 3150 60  0000 C CNN
F 3 "" H 6400 3150 60  0000 C CNN
	1    6400 3150
	1    0    0    -1  
$EndComp
$Comp
L SMA J1
U 1 1 554804CD
P 7300 5550
F 0 "J1" H 7300 5800 60  0000 C CNN
F 1 "SMA" H 7300 5900 60  0000 C CNN
F 2 "local:SMA_5-1814832-1" H 7300 5800 60  0001 C CNN
F 3 "" H 7300 5800 60  0000 C CNN
	1    7300 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 55480DCB
P 6600 5900
F 0 "#PWR015" H 6600 5650 50  0001 C CNN
F 1 "GND" H 6600 5750 50  0000 C CNN
F 2 "" H 6600 5900 60  0000 C CNN
F 3 "" H 6600 5900 60  0000 C CNN
	1    6600 5900
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 554810B8
P 8000 5650
F 0 "R1" V 8080 5650 50  0000 C CNN
F 1 "R" V 8000 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7930 5650 30  0001 C CNN
F 3 "" H 8000 5650 30  0000 C CNN
	1    8000 5650
	0    1    1    0   
$EndComp
NoConn ~ 3850 3700
Wire Wire Line
	2150 4150 2450 4150
Wire Wire Line
	2150 4050 2450 4050
Wire Wire Line
	2150 2850 2300 2850
Wire Wire Line
	2150 2950 2300 2950
Wire Wire Line
	2300 4250 2150 4250
Wire Wire Line
	2450 3950 2150 3950
Wire Wire Line
	2450 3850 2150 3850
Wire Wire Line
	2450 3750 2150 3750
Wire Wire Line
	2450 3650 2150 3650
Wire Wire Line
	2150 3550 2450 3550
Wire Wire Line
	2150 3450 2450 3450
Wire Wire Line
	2150 3350 2450 3350
Wire Wire Line
	2150 3250 2450 3250
Wire Wire Line
	2150 3150 2450 3150
Wire Wire Line
	2150 3050 2450 3050
Wire Wire Line
	5850 1250 5950 1250
Wire Wire Line
	5950 1250 5950 2050
Wire Wire Line
	5850 1950 5950 1950
Connection ~ 5950 1950
Wire Wire Line
	5850 1850 5950 1850
Connection ~ 5950 1850
Wire Wire Line
	5850 1750 5950 1750
Connection ~ 5950 1750
Wire Wire Line
	5850 1650 5950 1650
Connection ~ 5950 1650
Wire Wire Line
	5850 1550 5950 1550
Connection ~ 5950 1550
Wire Wire Line
	5850 1450 5950 1450
Connection ~ 5950 1450
Wire Wire Line
	5850 1350 5950 1350
Connection ~ 5950 1350
Wire Wire Line
	5000 3800 4750 3800
Wire Wire Line
	5000 4100 4750 4100
Wire Wire Line
	5000 4200 4750 4200
Wire Wire Line
	5500 3700 5600 3700
Wire Wire Line
	5600 3700 5600 4500
Wire Wire Line
	5500 4400 5600 4400
Connection ~ 5600 4400
Wire Wire Line
	5500 4300 5600 4300
Connection ~ 5600 4300
Wire Wire Line
	5500 4200 5600 4200
Connection ~ 5600 4200
Wire Wire Line
	5500 4100 5600 4100
Connection ~ 5600 4100
Wire Wire Line
	5500 4000 5600 4000
Connection ~ 5600 4000
Wire Wire Line
	5500 3900 5600 3900
Connection ~ 5600 3900
Wire Wire Line
	5500 3800 5600 3800
Connection ~ 5600 3800
Wire Wire Line
	3850 3800 3600 3800
Wire Wire Line
	3850 4100 3600 4100
Wire Wire Line
	3850 4200 3600 4200
Wire Wire Line
	4350 3700 4450 3700
Wire Wire Line
	4450 3700 4450 4500
Wire Wire Line
	4350 4400 4450 4400
Connection ~ 4450 4400
Wire Wire Line
	4350 4300 4450 4300
Connection ~ 4450 4300
Wire Wire Line
	4350 4200 4450 4200
Connection ~ 4450 4200
Wire Wire Line
	4350 4100 4450 4100
Connection ~ 4450 4100
Wire Wire Line
	4350 4000 4450 4000
Connection ~ 4450 4000
Wire Wire Line
	4350 3900 4450 3900
Connection ~ 4450 3900
Wire Wire Line
	4350 3800 4450 3800
Connection ~ 4450 3800
Wire Wire Line
	3850 4400 3600 4400
Wire Wire Line
	5000 3900 4750 3900
Wire Wire Line
	3850 3900 3600 3900
Wire Wire Line
	6700 2500 6450 2500
Wire Wire Line
	5800 2700 6700 2700
Wire Wire Line
	6700 2800 6450 2800
Wire Wire Line
	6000 3000 6700 3000
Wire Wire Line
	6400 3100 6700 3100
Wire Wire Line
	7000 1250 7100 1250
Wire Wire Line
	7100 1250 7100 2050
Wire Wire Line
	7000 1950 7100 1950
Connection ~ 7100 1950
Wire Wire Line
	7000 1850 7100 1850
Connection ~ 7100 1850
Wire Wire Line
	7000 1750 7100 1750
Connection ~ 7100 1750
Wire Wire Line
	7000 1650 7100 1650
Connection ~ 7100 1650
Wire Wire Line
	7000 1550 7100 1550
Connection ~ 7100 1550
Wire Wire Line
	7000 1450 7100 1450
Connection ~ 7100 1450
Wire Wire Line
	7000 1350 7100 1350
Connection ~ 7100 1350
Wire Wire Line
	2350 4500 2250 4500
Wire Wire Line
	2250 4500 2250 4250
Connection ~ 2250 4250
Wire Wire Line
	7050 4500 7050 4600
Wire Wire Line
	7050 4100 7050 4200
Wire Wire Line
	6300 1250 6500 1250
Wire Wire Line
	6500 1350 6300 1350
Wire Wire Line
	6500 1450 6300 1450
Wire Wire Line
	6500 1550 6300 1550
Wire Wire Line
	6500 1650 6300 1650
Wire Wire Line
	6500 1750 6300 1750
Wire Wire Line
	6500 1850 6300 1850
Wire Wire Line
	6500 1950 6300 1950
Wire Wire Line
	8100 3400 8300 3400
Wire Wire Line
	5150 1250 5350 1250
Wire Wire Line
	5350 1350 5150 1350
Wire Wire Line
	5350 1450 5150 1450
Wire Wire Line
	5350 1550 5150 1550
Wire Wire Line
	5350 1650 5150 1650
Wire Wire Line
	5350 1750 5150 1750
Wire Wire Line
	5350 1850 5150 1850
Wire Wire Line
	5350 1950 5150 1950
Wire Wire Line
	8300 2500 8100 2500
Wire Wire Line
	8100 2600 8300 2600
Wire Wire Line
	8100 2700 8300 2700
Wire Wire Line
	8100 2800 8300 2800
Wire Wire Line
	8100 2900 8300 2900
Wire Wire Line
	8100 3000 8300 3000
Wire Wire Line
	8100 3100 8300 3100
Wire Wire Line
	8100 3200 8300 3200
Wire Wire Line
	5000 4400 4750 4400
Wire Wire Line
	7500 4500 7500 4600
Wire Wire Line
	7500 4100 7500 4200
Wire Wire Line
	6000 3000 6000 2700
Connection ~ 6000 2700
Wire Wire Line
	6400 3100 6400 3150
Wire Wire Line
	6750 5500 6600 5500
Wire Wire Line
	6600 5500 6600 5900
Wire Wire Line
	6750 5600 6600 5600
Connection ~ 6600 5600
Wire Wire Line
	6750 5700 6600 5700
Connection ~ 6600 5700
Wire Wire Line
	6750 5800 6600 5800
Connection ~ 6600 5800
Wire Wire Line
	7850 5650 7700 5650
Wire Wire Line
	8400 5650 8150 5650
$Comp
L CONN_01X02 P7
U 1 1 55482BE4
P 8650 4500
F 0 "P7" H 8650 4650 50  0000 C CNN
F 1 "CONN_01X02" V 8750 4500 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 8650 4500 60  0001 C CNN
F 3 "" H 8650 4500 60  0000 C CNN
	1    8650 4500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P6
U 1 1 55482C4D
P 8650 4000
F 0 "P6" H 8650 4150 50  0000 C CNN
F 1 "CONN_01X02" V 8750 4000 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 8650 4000 60  0001 C CNN
F 3 "" H 8650 4000 60  0000 C CNN
	1    8650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3950 8450 3950
Wire Wire Line
	8350 4450 8450 4450
$Comp
L GND #PWR016
U 1 1 55482E83
P 8350 4050
F 0 "#PWR016" H 8350 3800 50  0001 C CNN
F 1 "GND" H 8350 3900 50  0000 C CNN
F 2 "" H 8350 4050 60  0000 C CNN
F 3 "" H 8350 4050 60  0000 C CNN
	1    8350 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4050 8350 4050
$Comp
L GND #PWR017
U 1 1 55482FFD
P 8350 4550
F 0 "#PWR017" H 8350 4300 50  0001 C CNN
F 1 "GND" H 8350 4400 50  0000 C CNN
F 2 "" H 8350 4550 60  0000 C CNN
F 3 "" H 8350 4550 60  0000 C CNN
	1    8350 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4550 8350 4550
Text Notes 3500 5000 0    60   ~ 0
force D8/D9 as differential in hardware\nsee MAX3293 or ISL3295EFHZ
Text Notes 5700 3400 0    60   ~ 0
output enable, active low
Text Notes 3700 2850 0    60   ~ 0
rclk and sclk, shift and storage register clocks
Text Notes 3700 2950 0    60   ~ 0
srclr is active low master reset
Text Notes 5750 2500 0    60   ~ 0
serial data in
$Comp
L LED D1
U 1 1 559330F0
P 6600 4350
F 0 "D1" H 6600 4450 50  0000 C CNN
F 1 "LED" H 6600 4250 50  0000 C CNN
F 2 "LEDs:LED-0805" H 6600 4350 60  0001 C CNN
F 3 "" H 6600 4350 60  0000 C CNN
	1    6600 4350
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR018
U 1 1 559331B7
P 6600 4050
F 0 "#PWR018" H 6600 3900 50  0001 C CNN
F 1 "VCC" H 6600 4200 50  0000 C CNN
F 2 "" H 6600 4050 60  0000 C CNN
F 3 "" H 6600 4050 60  0000 C CNN
	1    6600 4050
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 559331E9
P 6600 4800
F 0 "R2" V 6680 4800 50  0000 C CNN
F 1 "R" V 6600 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6530 4800 30  0001 C CNN
F 3 "" H 6600 4800 30  0000 C CNN
	1    6600 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 4050 6600 4150
Wire Wire Line
	6600 4550 6600 4650
$Comp
L GND #PWR019
U 1 1 559333A4
P 6600 5000
F 0 "#PWR019" H 6600 4750 50  0001 C CNN
F 1 "GND" H 6600 4850 50  0000 C CNN
F 2 "" H 6600 5000 60  0000 C CNN
F 3 "" H 6600 5000 60  0000 C CNN
	1    6600 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5000 6600 4950
$EndSCHEMATC
