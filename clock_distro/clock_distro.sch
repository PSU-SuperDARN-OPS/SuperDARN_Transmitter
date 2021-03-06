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
LIBS:cdclvc1108
LIBS:mounting_hole
LIBS:sma
LIBS:nb3n551
LIBS:clock_distro-cache
EELAYER 25 0
EELAYER END
$Descr C 22000 17000
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
Text Notes 7800 4700 0    60   ~ 0
clock fanout board, 8 : 1 (use for PPS and 10 MHz)\n5V tolerant, 50 ohm input\n3.3V square wave, 50 ohm output
$Comp
L MOUNTING_HOLE H1
U 1 1 59139020
P 1750 5000
F 0 "H1" H 1450 5050 60  0000 C CNN
F 1 "MOUNTING_HOLE" H 1750 5150 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1750 5000 60  0001 C CNN
F 3 "" H 1750 5000 60  0000 C CNN
	1    1750 5000
	1    0    0    -1  
$EndComp
$Comp
L MOUNTING_HOLE H2
U 1 1 5913907D
P 1750 5300
F 0 "H2" H 1450 5350 60  0000 C CNN
F 1 "MOUNTING_HOLE" H 1750 5450 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1750 5300 60  0001 C CNN
F 3 "" H 1750 5300 60  0000 C CNN
	1    1750 5300
	1    0    0    -1  
$EndComp
$Comp
L MOUNTING_HOLE H3
U 1 1 591390C2
P 1750 5600
F 0 "H3" H 1450 5650 60  0000 C CNN
F 1 "MOUNTING_HOLE" H 1750 5750 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1750 5600 60  0001 C CNN
F 3 "" H 1750 5600 60  0000 C CNN
	1    1750 5600
	1    0    0    -1  
$EndComp
$Comp
L MOUNTING_HOLE H4
U 1 1 59139100
P 1750 5900
F 0 "H4" H 1450 5950 60  0000 C CNN
F 1 "MOUNTING_HOLE" H 1750 6050 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1750 5900 60  0001 C CNN
F 3 "" H 1750 5900 60  0000 C CNN
	1    1750 5900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 59139376
P 2600 6950
F 0 "P1" H 2600 7100 50  0000 C CNN
F 1 "CONN_01X02" V 2700 6950 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 2600 6950 50  0001 C CNN
F 3 "" H 2600 6950 50  0000 C CNN
	1    2600 6950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR01
U 1 1 591394F3
P 2650 7600
F 0 "#PWR01" H 2650 7350 50  0001 C CNN
F 1 "GND" H 2650 7450 50  0000 C CNN
F 2 "" H 2650 7600 50  0000 C CNN
F 3 "" H 2650 7600 50  0000 C CNN
	1    2650 7600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 591396A9
P 2250 7450
F 0 "C2" H 2260 7520 50  0000 L CNN
F 1 "10 uF" H 2260 7370 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeA_EIA-3216_HandSoldering" H 2250 7450 50  0001 C CNN
F 3 "" H 2250 7450 50  0000 C CNN
	1    2250 7450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 591397E9
P 2250 7600
F 0 "#PWR02" H 2250 7350 50  0001 C CNN
F 1 "GND" H 2250 7450 50  0000 C CNN
F 2 "" H 2250 7600 50  0000 C CNN
F 3 "" H 2250 7600 50  0000 C CNN
	1    2250 7600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 591399BC
P 1950 7450
F 0 "C1" H 1960 7520 50  0000 L CNN
F 1 "100 nF" H 1960 7370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1950 7450 50  0001 C CNN
F 3 "" H 1950 7450 50  0000 C CNN
	1    1950 7450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 59139A38
P 1950 7600
F 0 "#PWR03" H 1950 7350 50  0001 C CNN
F 1 "GND" H 1950 7450 50  0000 C CNN
F 2 "" H 1950 7600 50  0000 C CNN
F 3 "" H 1950 7600 50  0000 C CNN
	1    1950 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7600 1950 7550
Connection ~ 1950 7250
Wire Wire Line
	1950 7250 1950 7350
Connection ~ 2250 7250
Wire Wire Line
	2250 6400 2250 7350
Wire Wire Line
	2250 7600 2250 7550
Wire Wire Line
	2550 7250 2550 7150
Wire Wire Line
	1750 7250 2550 7250
Wire Wire Line
	2650 7150 2650 7600
$Comp
L L_Small L1
U 1 1 5913B22A
P 1650 7250
F 0 "L1" H 1680 7290 50  0000 L CNN
F 1 "L_Small" H 1680 7210 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1650 7250 50  0001 C CNN
F 3 "" H 1650 7250 50  0000 C CNN
	1    1650 7250
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 7250 1500 7250
$Comp
L SMA J6
U 1 1 5913D8A7
P 14600 5000
F 0 "J6" H 14600 5250 60  0000 C CNN
F 1 "SMA" H 14600 5350 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 14600 5250 60  0001 C CNN
F 3 "" H 14600 5250 60  0000 C CNN
	1    14600 5000
	-1   0    0    1   
$EndComp
$Comp
L SMA J1
U 1 1 5913DCDF
P 1800 3400
F 0 "J1" H 1800 3650 60  0000 C CNN
F 1 "SMA" H 1800 3750 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 1800 3650 60  0001 C CNN
F 3 "" H 1800 3650 60  0000 C CNN
	1    1800 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5913DECB
P 1100 3500
F 0 "#PWR04" H 1100 3250 50  0001 C CNN
F 1 "GND" H 1100 3350 50  0000 C CNN
F 2 "" H 1100 3500 50  0000 C CNN
F 3 "" H 1100 3500 50  0000 C CNN
	1    1100 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 3500 1100 3500
Wire Wire Line
	1150 3350 1150 3650
Wire Wire Line
	1150 3350 1250 3350
Wire Wire Line
	1150 3450 1250 3450
Connection ~ 1150 3450
Wire Wire Line
	1150 3550 1250 3550
Connection ~ 1150 3500
Wire Wire Line
	1150 3650 1250 3650
Connection ~ 1150 3550
$Comp
L R_Small R1
U 1 1 5913E1B7
P 2400 3700
F 0 "R1" H 2430 3720 50  0000 L CNN
F 1 "DNP" H 2430 3660 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2400 3700 50  0001 C CNN
F 3 "" H 2400 3700 50  0000 C CNN
	1    2400 3700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 5913E2B2
P 2400 3850
F 0 "#PWR05" H 2400 3600 50  0001 C CNN
F 1 "GND" H 2400 3700 50  0000 C CNN
F 2 "" H 2400 3850 50  0000 C CNN
F 3 "" H 2400 3850 50  0000 C CNN
	1    2400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3800 2400 3850
Wire Wire Line
	2200 3500 2500 3500
$Comp
L GND #PWR06
U 1 1 5913E638
P 15250 4900
F 0 "#PWR06" H 15250 4650 50  0001 C CNN
F 1 "GND" H 15250 4750 50  0000 C CNN
F 2 "" H 15250 4900 50  0000 C CNN
F 3 "" H 15250 4900 50  0000 C CNN
	1    15250 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15150 4850 15200 4850
Wire Wire Line
	15200 4750 15200 5050
Wire Wire Line
	15200 4900 15250 4900
Wire Wire Line
	15200 4950 15150 4950
Connection ~ 15200 4900
Wire Wire Line
	15200 5050 15150 5050
Connection ~ 15200 4950
Wire Wire Line
	15150 4750 15200 4750
Connection ~ 15200 4850
$Comp
L R_Small R9
U 1 1 5913E8FC
P 13950 4900
F 0 "R9" H 13980 4920 50  0000 L CNN
F 1 "30" H 13980 4860 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 13950 4900 50  0001 C CNN
F 3 "" H 13950 4900 50  0000 C CNN
	1    13950 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	14050 4900 14200 4900
Text Label 13700 6250 2    60   ~ 0
PPS1
Wire Wire Line
	13650 4900 13850 4900
$Comp
L SMA J7
U 1 1 5913ED5C
P 14600 5750
F 0 "J7" H 14600 6000 60  0000 C CNN
F 1 "SMA" H 14600 6100 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 14600 6000 60  0001 C CNN
F 3 "" H 14600 6000 60  0000 C CNN
	1    14600 5750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR07
U 1 1 5913ED62
P 15250 5650
F 0 "#PWR07" H 15250 5400 50  0001 C CNN
F 1 "GND" H 15250 5500 50  0000 C CNN
F 2 "" H 15250 5650 50  0000 C CNN
F 3 "" H 15250 5650 50  0000 C CNN
	1    15250 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15150 5600 15200 5600
Wire Wire Line
	15200 5500 15200 5800
Wire Wire Line
	15200 5650 15250 5650
Wire Wire Line
	15200 5700 15150 5700
Connection ~ 15200 5650
Wire Wire Line
	15200 5800 15150 5800
Connection ~ 15200 5700
Wire Wire Line
	15150 5500 15200 5500
Connection ~ 15200 5600
$Comp
L R_Small R10
U 1 1 5913ED71
P 13950 5650
F 0 "R10" H 13980 5670 50  0000 L CNN
F 1 "30" H 13980 5610 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 13950 5650 50  0001 C CNN
F 3 "" H 13950 5650 50  0000 C CNN
	1    13950 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	14050 5650 14200 5650
Text Label 13650 5650 2    60   ~ 0
PPS2
Wire Wire Line
	13650 5650 13850 5650
$Comp
L SMA J8
U 1 1 5913EF5E
P 14600 4350
F 0 "J8" H 14600 4600 60  0000 C CNN
F 1 "SMA" H 14600 4700 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 14600 4600 60  0001 C CNN
F 3 "" H 14600 4600 60  0000 C CNN
	1    14600 4350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 5913EF64
P 15250 4250
F 0 "#PWR08" H 15250 4000 50  0001 C CNN
F 1 "GND" H 15250 4100 50  0000 C CNN
F 2 "" H 15250 4250 50  0000 C CNN
F 3 "" H 15250 4250 50  0000 C CNN
	1    15250 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15150 4200 15200 4200
Wire Wire Line
	15200 4100 15200 4400
Wire Wire Line
	15200 4250 15250 4250
Wire Wire Line
	15200 4300 15150 4300
Connection ~ 15200 4250
Wire Wire Line
	15200 4400 15150 4400
Connection ~ 15200 4300
Wire Wire Line
	15150 4100 15200 4100
Connection ~ 15200 4200
$Comp
L R_Small R11
U 1 1 5913EF73
P 13950 4250
F 0 "R11" H 13980 4270 50  0000 L CNN
F 1 "30" H 13980 4210 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 13950 4250 50  0001 C CNN
F 3 "" H 13950 4250 50  0000 C CNN
	1    13950 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	14050 4250 14200 4250
Text Label 13650 4900 2    60   ~ 0
PPS3
Wire Wire Line
	13650 4250 13850 4250
$Comp
L SMA J9
U 1 1 5913EF7C
P 14650 6350
F 0 "J9" H 14650 6600 60  0000 C CNN
F 1 "SMA" H 14650 6700 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 14650 6600 60  0001 C CNN
F 3 "" H 14650 6600 60  0000 C CNN
	1    14650 6350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 5913EF82
P 15300 6250
F 0 "#PWR09" H 15300 6000 50  0001 C CNN
F 1 "GND" H 15300 6100 50  0000 C CNN
F 2 "" H 15300 6250 50  0000 C CNN
F 3 "" H 15300 6250 50  0000 C CNN
	1    15300 6250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15200 6200 15250 6200
Wire Wire Line
	15250 6100 15250 6400
Wire Wire Line
	15250 6250 15300 6250
Wire Wire Line
	15250 6300 15200 6300
Connection ~ 15250 6250
Wire Wire Line
	15250 6400 15200 6400
Connection ~ 15250 6300
Wire Wire Line
	15200 6100 15250 6100
Connection ~ 15250 6200
$Comp
L R_Small R12
U 1 1 5913EF91
P 14000 6250
F 0 "R12" H 14030 6270 50  0000 L CNN
F 1 "30" H 14030 6210 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 14000 6250 50  0001 C CNN
F 3 "" H 14000 6250 50  0000 C CNN
	1    14000 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	14100 6250 14250 6250
Text Label 13650 4250 2    60   ~ 0
PPS4
Wire Wire Line
	13700 6250 13900 6250
$Comp
L SMA J2
U 1 1 5913F5A8
P 14700 8450
F 0 "J2" H 14700 8700 60  0000 C CNN
F 1 "SMA" H 14700 8800 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 14700 8700 60  0001 C CNN
F 3 "" H 14700 8700 60  0000 C CNN
	1    14700 8450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 5913F5AE
P 15350 8350
F 0 "#PWR010" H 15350 8100 50  0001 C CNN
F 1 "GND" H 15350 8200 50  0000 C CNN
F 2 "" H 15350 8350 50  0000 C CNN
F 3 "" H 15350 8350 50  0000 C CNN
	1    15350 8350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15250 8300 15300 8300
Wire Wire Line
	15300 8200 15300 8500
Wire Wire Line
	15300 8350 15350 8350
Wire Wire Line
	15300 8400 15250 8400
Connection ~ 15300 8350
Wire Wire Line
	15300 8500 15250 8500
Connection ~ 15300 8400
Wire Wire Line
	15250 8200 15300 8200
Connection ~ 15300 8300
$Comp
L R_Small R5
U 1 1 5913F5BD
P 14050 8350
F 0 "R5" H 14080 8370 50  0000 L CNN
F 1 "30" H 14080 8310 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 14050 8350 50  0001 C CNN
F 3 "" H 14050 8350 50  0000 C CNN
	1    14050 8350
	0    1    1    0   
$EndComp
Wire Wire Line
	14150 8350 14300 8350
Text Label 13750 10600 2    60   ~ 0
10M1
Wire Wire Line
	13750 8350 13950 8350
$Comp
L SMA J3
U 1 1 5913F5C6
P 14700 9200
F 0 "J3" H 14700 9450 60  0000 C CNN
F 1 "SMA" H 14700 9550 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 14700 9450 60  0001 C CNN
F 3 "" H 14700 9450 60  0000 C CNN
	1    14700 9200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 5913F5CC
P 15350 9100
F 0 "#PWR011" H 15350 8850 50  0001 C CNN
F 1 "GND" H 15350 8950 50  0000 C CNN
F 2 "" H 15350 9100 50  0000 C CNN
F 3 "" H 15350 9100 50  0000 C CNN
	1    15350 9100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15250 9050 15300 9050
Wire Wire Line
	15300 8950 15300 9250
Wire Wire Line
	15300 9100 15350 9100
Wire Wire Line
	15300 9150 15250 9150
Connection ~ 15300 9100
Wire Wire Line
	15300 9250 15250 9250
Connection ~ 15300 9150
Wire Wire Line
	15250 8950 15300 8950
Connection ~ 15300 9050
$Comp
L R_Small R6
U 1 1 5913F5DB
P 14050 9100
F 0 "R6" H 14080 9120 50  0000 L CNN
F 1 "30" H 14080 9060 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 14050 9100 50  0001 C CNN
F 3 "" H 14050 9100 50  0000 C CNN
	1    14050 9100
	0    1    1    0   
$EndComp
Wire Wire Line
	14150 9100 14300 9100
Text Label 13750 9100 2    60   ~ 0
10M2
Wire Wire Line
	13750 9100 13950 9100
$Comp
L SMA J4
U 1 1 5913F5E4
P 14700 9950
F 0 "J4" H 14700 10200 60  0000 C CNN
F 1 "SMA" H 14700 10300 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 14700 10200 60  0001 C CNN
F 3 "" H 14700 10200 60  0000 C CNN
	1    14700 9950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 5913F5EA
P 15350 9850
F 0 "#PWR012" H 15350 9600 50  0001 C CNN
F 1 "GND" H 15350 9700 50  0000 C CNN
F 2 "" H 15350 9850 50  0000 C CNN
F 3 "" H 15350 9850 50  0000 C CNN
	1    15350 9850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15250 9800 15300 9800
Wire Wire Line
	15300 9700 15300 10000
Wire Wire Line
	15300 9850 15350 9850
Wire Wire Line
	15300 9900 15250 9900
Connection ~ 15300 9850
Wire Wire Line
	15300 10000 15250 10000
Connection ~ 15300 9900
Wire Wire Line
	15250 9700 15300 9700
Connection ~ 15300 9800
$Comp
L R_Small R7
U 1 1 5913F5F9
P 14050 9850
F 0 "R7" H 14080 9870 50  0000 L CNN
F 1 "30" H 14080 9810 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 14050 9850 50  0001 C CNN
F 3 "" H 14050 9850 50  0000 C CNN
	1    14050 9850
	0    1    1    0   
$EndComp
Wire Wire Line
	14150 9850 14300 9850
Text Label 13750 9850 2    60   ~ 0
10M3
Wire Wire Line
	13750 9850 13950 9850
$Comp
L SMA J5
U 1 1 5913F602
P 14700 10700
F 0 "J5" H 14700 10950 60  0000 C CNN
F 1 "SMA" H 14700 11050 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 14700 10950 60  0001 C CNN
F 3 "" H 14700 10950 60  0000 C CNN
	1    14700 10700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 5913F608
P 15350 10600
F 0 "#PWR013" H 15350 10350 50  0001 C CNN
F 1 "GND" H 15350 10450 50  0000 C CNN
F 2 "" H 15350 10600 50  0000 C CNN
F 3 "" H 15350 10600 50  0000 C CNN
	1    15350 10600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15250 10550 15300 10550
Wire Wire Line
	15300 10450 15300 10750
Wire Wire Line
	15300 10600 15350 10600
Wire Wire Line
	15300 10650 15250 10650
Connection ~ 15300 10600
Wire Wire Line
	15300 10750 15250 10750
Connection ~ 15300 10650
Wire Wire Line
	15250 10450 15300 10450
Connection ~ 15300 10550
$Comp
L R_Small R8
U 1 1 5913F617
P 14050 10600
F 0 "R8" H 14080 10620 50  0000 L CNN
F 1 "30" H 14080 10560 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 14050 10600 50  0001 C CNN
F 3 "" H 14050 10600 50  0000 C CNN
	1    14050 10600
	0    1    1    0   
$EndComp
Wire Wire Line
	14150 10600 14300 10600
Text Label 13750 8350 2    60   ~ 0
10M4
Wire Wire Line
	13750 10600 13950 10600
Text Notes 13050 3550 0    60   ~ 0
outputs support 50 ohm loads\nuse 50 ohm microstrip
$Comp
L R_Small R2
U 1 1 59141A7B
P 2600 3500
F 0 "R2" H 2630 3520 50  0000 L CNN
F 1 "18" H 2630 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2600 3500 50  0001 C CNN
F 3 "" H 2600 3500 50  0000 C CNN
	1    2600 3500
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R3
U 1 1 59141B06
P 2750 3700
F 0 "R3" H 2780 3720 50  0000 L CNN
F 1 "33" H 2780 3660 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2750 3700 50  0001 C CNN
F 3 "" H 2750 3700 50  0000 C CNN
	1    2750 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 59141BBC
P 2750 3850
F 0 "#PWR014" H 2750 3600 50  0001 C CNN
F 1 "GND" H 2750 3700 50  0000 C CNN
F 2 "" H 2750 3850 50  0000 C CNN
F 3 "" H 2750 3850 50  0000 C CNN
	1    2750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3800 2750 3850
Wire Wire Line
	2750 3500 2750 3600
Connection ~ 2400 3500
Connection ~ 2750 3500
Wire Wire Line
	2400 3500 2400 3600
$Comp
L DB15 J11
U 1 1 5931D1BA
P 7750 2850
F 0 "J11" H 7770 3700 50  0000 C CNN
F 1 "DB15" H 7700 2000 50  0000 C CNN
F 2 "Connect:DB15MC" H 7750 2850 50  0001 C CNN
F 3 "" H 7750 2850 50  0000 C CNN
	1    7750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3550 7300 3550
Text Label 7050 3550 2    60   ~ 0
EXT_10MHZ_IN
Text Notes 6800 1800 0    60   ~ 0
DSUB15 header for BC637 PCIe GPS 
Wire Wire Line
	7300 3450 7050 3450
Text Label 7050 3450 2    60   ~ 0
OSC_CTRL_V
Wire Wire Line
	6450 3350 7300 3350
$Comp
L GND #PWR015
U 1 1 5931E07E
P 6450 3350
F 0 "#PWR015" H 6450 3100 50  0001 C CNN
F 1 "GND" H 6450 3200 50  0000 C CNN
F 2 "" H 6450 3350 50  0000 C CNN
F 3 "" H 6450 3350 50  0000 C CNN
	1    6450 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3250 7050 3250
Wire Wire Line
	7300 3050 7050 3050
Wire Wire Line
	7300 3150 7050 3150
Wire Wire Line
	7300 2950 7050 2950
Wire Wire Line
	7300 2750 7050 2750
Wire Wire Line
	6450 2850 7300 2850
Wire Wire Line
	7300 2550 7050 2550
Wire Wire Line
	7300 2650 7050 2650
Wire Wire Line
	7300 2450 7050 2450
Wire Wire Line
	7300 2250 7050 2250
Wire Wire Line
	7300 2350 7050 2350
Wire Wire Line
	6350 2150 7300 2150
Text Label 7050 3250 2    60   ~ 0
DCLS_IN_EVENT2
Text Label 7050 3150 2    60   ~ 0
STROBE
Text Label 7050 3050 2    60   ~ 0
DCLS_OUT
Text Label 7050 2950 2    60   ~ 0
1PPS_OUT
$Comp
L GND #PWR016
U 1 1 5931EF68
P 6450 2850
F 0 "#PWR016" H 6450 2600 50  0001 C CNN
F 1 "GND" H 6450 2700 50  0000 C CNN
F 2 "" H 6450 2850 50  0000 C CNN
F 3 "" H 6450 2850 50  0000 C CNN
	1    6450 2850
	0    1    1    0   
$EndComp
Text Label 7050 2750 2    60   ~ 0
TIME_CODE_OUT
Text Label 7050 2650 2    60   ~ 0
10MPPS_OUT
Text Label 7050 2550 2    60   ~ 0
EXT_EVENT_IN
Text Label 7050 2450 2    60   ~ 0
1PPS_IN
Text Label 7050 2350 2    60   ~ 0
TIME_CODE_IN
Text Label 7050 2250 2    60   ~ 0
HEARTBEAT_OUT
$Comp
L GND #PWR017
U 1 1 5931F7D1
P 6350 2150
F 0 "#PWR017" H 6350 1900 50  0001 C CNN
F 1 "GND" H 6350 2000 50  0000 C CNN
F 2 "" H 6350 2150 50  0000 C CNN
F 3 "" H 6350 2150 50  0000 C CNN
	1    6350 2150
	0    1    1    0   
$EndComp
Text Label 2900 3500 0    60   ~ 0
EXT_10MHZ_IN
Wire Wire Line
	2700 3500 2900 3500
Text Label 5850 6800 2    60   ~ 0
10MPPS_OUT
Text Notes 5350 6650 0    60   ~ 0
5V HVCMOS
Text Label 5800 8850 2    60   ~ 0
1PPS_OUT
Text Notes 5300 8750 0    60   ~ 0
5V HVCMOS
$Comp
L R_Small R16
U 1 1 5935BC86
P 6550 6800
F 0 "R16" H 6580 6820 50  0000 L CNN
F 1 "18" H 6580 6760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6550 6800 50  0001 C CNN
F 3 "" H 6550 6800 50  0000 C CNN
	1    6550 6800
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R18
U 1 1 5935BC8C
P 6700 7000
F 0 "R18" H 6730 7020 50  0000 L CNN
F 1 "33" H 6730 6960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6700 7000 50  0001 C CNN
F 3 "" H 6700 7000 50  0000 C CNN
	1    6700 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5935BC92
P 6700 7150
F 0 "#PWR018" H 6700 6900 50  0001 C CNN
F 1 "GND" H 6700 7000 50  0000 C CNN
F 2 "" H 6700 7150 50  0000 C CNN
F 3 "" H 6700 7150 50  0000 C CNN
	1    6700 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 7100 6700 7150
Wire Wire Line
	6700 6800 6700 6900
Connection ~ 6700 6800
Wire Wire Line
	6650 6800 7750 6800
Wire Wire Line
	5850 6800 6450 6800
$Comp
L NB3N551 U2
U 1 1 5935C8EA
P 8200 6950
F 0 "U2" H 7900 7250 60  0000 C CNN
F 1 "NB3N551" H 8050 7350 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 8650 6950 60  0001 C CNN
F 3 "" H 8650 6950 60  0001 C CNN
	1    8200 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5935CB85
P 9050 7000
F 0 "#PWR019" H 9050 6750 50  0001 C CNN
F 1 "GND" H 9050 6850 50  0000 C CNN
F 2 "" H 9050 7000 50  0000 C CNN
F 3 "" H 9050 7000 50  0000 C CNN
	1    9050 7000
	0    -1   -1   0   
$EndComp
Text Label 7650 6900 2    60   ~ 0
PPS1
Wire Wire Line
	7650 6900 7750 6900
Text Label 7650 7000 2    60   ~ 0
PPS2
Wire Wire Line
	7650 7000 7750 7000
Text Label 7650 7100 2    60   ~ 0
PPS3
Wire Wire Line
	7650 7100 7750 7100
Text Label 8750 7100 0    60   ~ 0
PPS4
Wire Wire Line
	8750 7100 8650 7100
Wire Wire Line
	9050 7000 8650 7000
Wire Wire Line
	8800 6900 8650 6900
Wire Wire Line
	8800 6050 8800 6900
$Comp
L C_Small C4
U 1 1 5935E919
P 9000 6250
F 0 "C4" H 9010 6320 50  0000 L CNN
F 1 "100 nF" H 9010 6170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9000 6250 50  0001 C CNN
F 3 "" H 9000 6250 50  0000 C CNN
	1    9000 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5935EBB2
P 9000 6450
F 0 "#PWR020" H 9000 6200 50  0001 C CNN
F 1 "GND" H 9000 6300 50  0000 C CNN
F 2 "" H 9000 6450 50  0000 C CNN
F 3 "" H 9000 6450 50  0000 C CNN
	1    9000 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 6350 9000 6450
Wire Wire Line
	8800 6100 9000 6100
Wire Wire Line
	9000 6100 9000 6150
Connection ~ 8800 6100
$Comp
L R_Small R15
U 1 1 5935F246
P 6500 8850
F 0 "R15" H 6530 8870 50  0000 L CNN
F 1 "18" H 6530 8810 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6500 8850 50  0001 C CNN
F 3 "" H 6500 8850 50  0000 C CNN
	1    6500 8850
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R17
U 1 1 5935F24C
P 6650 9050
F 0 "R17" H 6680 9070 50  0000 L CNN
F 1 "33" H 6680 9010 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6650 9050 50  0001 C CNN
F 3 "" H 6650 9050 50  0000 C CNN
	1    6650 9050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5935F252
P 6650 9200
F 0 "#PWR021" H 6650 8950 50  0001 C CNN
F 1 "GND" H 6650 9050 50  0000 C CNN
F 2 "" H 6650 9200 50  0000 C CNN
F 3 "" H 6650 9200 50  0000 C CNN
	1    6650 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 9150 6650 9200
Wire Wire Line
	6650 8850 6650 8950
Connection ~ 6650 8850
Wire Wire Line
	6600 8850 7700 8850
Wire Wire Line
	5800 8850 6400 8850
$Comp
L NB3N551 U1
U 1 1 5935F25D
P 8150 9000
F 0 "U1" H 7850 9300 60  0000 C CNN
F 1 "NB3N551" H 8000 9400 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 8600 9000 60  0001 C CNN
F 3 "" H 8600 9000 60  0001 C CNN
	1    8150 9000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5935F263
P 9000 9050
F 0 "#PWR022" H 9000 8800 50  0001 C CNN
F 1 "GND" H 9000 8900 50  0000 C CNN
F 2 "" H 9000 9050 50  0000 C CNN
F 3 "" H 9000 9050 50  0000 C CNN
	1    9000 9050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 8950 7700 8950
Wire Wire Line
	7600 9050 7700 9050
Wire Wire Line
	7600 9150 7700 9150
Wire Wire Line
	8700 9150 8600 9150
Wire Wire Line
	9000 9050 8600 9050
Wire Wire Line
	8750 8950 8600 8950
Wire Wire Line
	8750 8100 8750 8950
$Comp
L C_Small C3
U 1 1 5935F27A
P 8950 8300
F 0 "C3" H 8960 8370 50  0000 L CNN
F 1 "100 nF" H 8960 8220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8950 8300 50  0001 C CNN
F 3 "" H 8950 8300 50  0000 C CNN
	1    8950 8300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5935F280
P 8950 8500
F 0 "#PWR023" H 8950 8250 50  0001 C CNN
F 1 "GND" H 8950 8350 50  0000 C CNN
F 2 "" H 8950 8500 50  0000 C CNN
F 3 "" H 8950 8500 50  0000 C CNN
	1    8950 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 8400 8950 8500
Wire Wire Line
	8750 8150 8950 8150
Wire Wire Line
	8950 8150 8950 8200
Connection ~ 8750 8150
Wire Wire Line
	8600 8850 8750 8850
Connection ~ 8750 8850
Wire Wire Line
	8650 6800 8800 6800
Connection ~ 8800 6800
Text Label 7600 8950 2    60   ~ 0
10M1
Text Label 7600 9050 2    60   ~ 0
10M2
Text Label 7600 9150 2    60   ~ 0
10M3
Text Label 8700 9150 0    60   ~ 0
10M4
Text Label 2950 2400 0    60   ~ 0
EXT_EVENT_IN
$Comp
L SMA J10
U 1 1 593609D4
P 1850 2300
F 0 "J10" H 1850 2550 60  0000 C CNN
F 1 "SMA" H 1850 2650 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 1850 2550 60  0001 C CNN
F 3 "" H 1850 2550 60  0000 C CNN
	1    1850 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 593609DA
P 1150 2400
F 0 "#PWR024" H 1150 2150 50  0001 C CNN
F 1 "GND" H 1150 2250 50  0000 C CNN
F 2 "" H 1150 2400 50  0000 C CNN
F 3 "" H 1150 2400 50  0000 C CNN
	1    1150 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 2400 1150 2400
Wire Wire Line
	1200 2250 1200 2550
Wire Wire Line
	1200 2250 1300 2250
Wire Wire Line
	1200 2350 1300 2350
Connection ~ 1200 2350
Wire Wire Line
	1200 2450 1300 2450
Connection ~ 1200 2400
Wire Wire Line
	1200 2550 1300 2550
Connection ~ 1200 2450
$Comp
L R_Small R4
U 1 1 593609E9
P 2450 2600
F 0 "R4" H 2480 2620 50  0000 L CNN
F 1 "DNP" H 2480 2560 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2450 2600 50  0001 C CNN
F 3 "" H 2450 2600 50  0000 C CNN
	1    2450 2600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR025
U 1 1 593609EF
P 2450 2750
F 0 "#PWR025" H 2450 2500 50  0001 C CNN
F 1 "GND" H 2450 2600 50  0000 C CNN
F 2 "" H 2450 2750 50  0000 C CNN
F 3 "" H 2450 2750 50  0000 C CNN
	1    2450 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2700 2450 2750
Wire Wire Line
	2250 2400 2550 2400
$Comp
L R_Small R13
U 1 1 593609F7
P 2650 2400
F 0 "R13" H 2680 2420 50  0000 L CNN
F 1 "18" H 2680 2360 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2650 2400 50  0001 C CNN
F 3 "" H 2650 2400 50  0000 C CNN
	1    2650 2400
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R14
U 1 1 593609FD
P 2800 2600
F 0 "R14" H 2830 2620 50  0000 L CNN
F 1 "33" H 2830 2560 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2800 2600 50  0001 C CNN
F 3 "" H 2800 2600 50  0000 C CNN
	1    2800 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 59360A03
P 2800 2750
F 0 "#PWR026" H 2800 2500 50  0001 C CNN
F 1 "GND" H 2800 2600 50  0000 C CNN
F 2 "" H 2800 2750 50  0000 C CNN
F 3 "" H 2800 2750 50  0000 C CNN
	1    2800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2700 2800 2750
Wire Wire Line
	2800 2400 2800 2500
Connection ~ 2450 2400
Connection ~ 2800 2400
Wire Wire Line
	2450 2400 2450 2500
Wire Wire Line
	2750 2400 2950 2400
$Comp
L BARREL_JACK CON1
U 1 1 59360EFD
P 1650 6500
F 0 "CON1" H 1650 6750 50  0000 C CNN
F 1 "BARREL_JACK" H 1650 6300 50  0000 C CNN
F 2 "Connect:BARREL_JACK" H 1650 6500 50  0001 C CNN
F 3 "" H 1650 6500 50  0000 C CNN
	1    1650 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 593611F1
P 2000 6700
F 0 "#PWR027" H 2000 6450 50  0001 C CNN
F 1 "GND" H 2000 6550 50  0000 C CNN
F 2 "" H 2000 6700 50  0000 C CNN
F 3 "" H 2000 6700 50  0000 C CNN
	1    2000 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6600 2000 6600
Wire Wire Line
	2000 6500 2000 6700
Wire Wire Line
	1950 6500 2000 6500
Connection ~ 2000 6600
Wire Wire Line
	1950 6400 2250 6400
$Comp
L +5V #PWR028
U 1 1 59361CF6
P 8750 8100
F 0 "#PWR028" H 8750 7950 50  0001 C CNN
F 1 "+5V" H 8750 8240 50  0000 C CNN
F 2 "" H 8750 8100 50  0000 C CNN
F 3 "" H 8750 8100 50  0000 C CNN
	1    8750 8100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR029
U 1 1 593621A1
P 1500 7250
F 0 "#PWR029" H 1500 7100 50  0001 C CNN
F 1 "+5V" H 1500 7390 50  0000 C CNN
F 2 "" H 1500 7250 50  0000 C CNN
F 3 "" H 1500 7250 50  0000 C CNN
	1    1500 7250
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR030
U 1 1 59362916
P 8800 6050
F 0 "#PWR030" H 8800 5900 50  0001 C CNN
F 1 "+5V" H 8800 6190 50  0000 C CNN
F 2 "" H 8800 6050 50  0000 C CNN
F 3 "" H 8800 6050 50  0000 C CNN
	1    8800 6050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 59363D72
P 3850 6650
F 0 "P3" H 3850 6800 50  0000 C CNN
F 1 "CONN_01X02" V 3950 6650 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 3850 6650 50  0001 C CNN
F 3 "" H 3850 6650 50  0000 C CNN
	1    3850 6650
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R23
U 1 1 59363FA0
P 3800 7050
F 0 "R23" H 3830 7070 50  0000 L CNN
F 1 "1k" H 3830 7010 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3800 7050 50  0001 C CNN
F 3 "" H 3800 7050 50  0000 C CNN
	1    3800 7050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR031
U 1 1 5936421A
P 3800 7200
F 0 "#PWR031" H 3800 6950 50  0001 C CNN
F 1 "GND" H 3800 7050 50  0000 C CNN
F 2 "" H 3800 7200 50  0000 C CNN
F 3 "" H 3800 7200 50  0000 C CNN
	1    3800 7200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR032
U 1 1 593642A9
P 4050 7150
F 0 "#PWR032" H 4050 7000 50  0001 C CNN
F 1 "+5V" H 4050 7290 50  0000 C CNN
F 2 "" H 4050 7150 50  0000 C CNN
F 3 "" H 4050 7150 50  0000 C CNN
	1    4050 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 6850 3800 6950
Wire Wire Line
	3800 7150 3800 7200
Wire Wire Line
	4050 7150 3900 7150
Wire Wire Line
	3900 7150 3900 6850
Text Notes 3850 9800 0    60   ~ 0
so, order:\nbarrel jack\n2x NB3N551\nCS-DSDMDB15MM-010-ND\n5v wall wart\nAE10974-ND connector
$EndSCHEMATC
