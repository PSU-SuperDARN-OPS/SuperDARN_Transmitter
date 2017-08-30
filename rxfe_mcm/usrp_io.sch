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
LIBS:mounting_hole
LIBS:conn_sma
LIBS:conn_sma_2gnd
LIBS:adum5402arwz
LIBS:adum6400
LIBS:adum7440
LIBS:adum6404
LIBS:74hc04_full
LIBS:hmc595
LIBS:hmc475
LIBS:smp1330-005lf
LIBS:hmc542blp4e
LIBS:sclf-25
LIBS:trf37b73
LIBS:adp7158
LIBS:pe4312
LIBS:rxfe_mcm-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3300 3000 2    60   Output ~ 0
TXA
Text HLabel 3300 6800 2    60   Output ~ 0
TXB
Text HLabel 3300 4200 2    60   Input ~ 0
RXA
Text HLabel 3300 5600 2    60   Input ~ 0
RXB
Text Notes 950  800  0    60   ~ 0
isolated IO from DSUB15 connector. 12 IO lines, so, 3x isolator chips..
$Comp
L DB15 J201
U 1 1 597FDDD6
P 1700 1750
F 0 "J201" H 1720 2600 50  0000 C CNN
F 1 "DB15" H 1650 900 50  0000 C CNN
F 2 "footprints:DB15MC" H 1700 1750 50  0001 C CNN
F 3 "" H 1700 1750 50  0000 C CNN
F 4 "609-1498-ND" H 1700 1750 60  0001 C CNN "PN"
	1    1700 1750
	-1   0    0    -1  
$EndComp
NoConn ~ 2150 2450
$Comp
L CONN_SMA U209
U 1 1 598006F8
P 1750 6800
F 0 "U209" H 1400 7000 60  0000 C CNN
F 1 "CONN_SMA" H 1800 7000 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 1750 6800 60  0001 C CNN
F 3 "" H 1750 6800 60  0000 C CNN
F 4 "CONSMA002-L-ND" H 1750 6800 60  0001 C CNN "PN"
	1    1750 6800
	-1   0    0    -1  
$EndComp
$Comp
L R_PACK4 RP201
U 1 1 59801612
P 3550 2150
F 0 "RP201" H 3550 2600 50  0000 C CNN
F 1 "1k" H 3550 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Concave_4x0603" H 3550 2150 50  0001 C CNN
F 3 "" H 3550 2150 50  0000 C CNN
F 4 "TC164J-1.0KCT-ND" H 3550 2150 60  0001 C CNN "PN"
	1    3550 2150
	1    0    0    1   
$EndComp
Text HLabel 3950 1050 2    60   Output ~ 0
SYNC
Text HLabel 3950 1150 2    60   Output ~ 0
TR
Text HLabel 3950 1250 2    60   Output ~ 0
AMPA1_CTRL
Text HLabel 3950 1350 2    60   Output ~ 0
AMPA2_CTRL
Text HLabel 3950 1650 2    60   Output ~ 0
AMPB1_CTRL
Text HLabel 3950 1750 2    60   Output ~ 0
AMPB2_CTRL
Text HLabel 3950 2400 2    60   Output ~ 0
ATT_SDI
Text HLabel 3950 2500 2    60   Output ~ 0
ATT_SCK
$Comp
L R_PACK4 RP204
U 1 1 598094C5
P 3550 1000
F 0 "RP204" H 3550 1450 50  0000 C CNN
F 1 "1k" H 3550 950 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Concave_4x0603" H 3550 1000 50  0001 C CNN
F 3 "" H 3550 1000 50  0000 C CNN
F 4 "TC164J-1.0KCT-ND" H 3550 1000 60  0001 C CNN "PN"
	1    3550 1000
	1    0    0    1   
$EndComp
Text HLabel 3950 2200 2    60   Output ~ 0
ATT_A_LE
Text HLabel 3950 2300 2    60   Output ~ 0
ATT_B_LE
Text HLabel 3950 1850 2    60   Output ~ 0
AUX_IO_A
Text HLabel 3950 1950 2    60   Output ~ 0
AUX_IO_B
Text HLabel 9350 2400 2    60   Output ~ 0
~TR
Text HLabel 9350 2200 2    60   Output ~ 0
~AMPB2_CTRL
Text HLabel 6900 2500 0    60   Output ~ 0
~AMPB1_CTRL
Text HLabel 6900 2100 0    60   Output ~ 0
~AMPA1_CTRL
Text HLabel 6900 2300 0    60   Output ~ 0
~AMPA2_CTRL
Text HLabel 9350 2600 2    60   Output ~ 0
AUX_TR
$Comp
L 74HC04_FULL U203
U 1 1 5982631D
P 8100 2300
F 0 "U203" H 7800 2900 60  0000 C CNN
F 1 "74HC04_FULL" H 7900 2800 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 8100 2300 60  0001 C CNN
F 3 "" H 8100 2300 60  0000 C CNN
F 4 "296-8208-1-ND" H 8100 2300 60  0001 C CNN "PN"
	1    8100 2300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C208
U 1 1 59826A10
P 9000 1600
F 0 "C208" H 9010 1670 50  0000 L CNN
F 1 "100 nF" H 9010 1520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9000 1600 50  0001 C CNN
F 3 "" H 9000 1600 50  0000 C CNN
	1    9000 1600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59826F34
P 9000 1750
F 0 "#PWR01" H 9000 1500 50  0001 C CNN
F 1 "GND" H 9000 1600 50  0000 C CNN
F 2 "" H 9000 1750 50  0000 C CNN
F 3 "" H 9000 1750 50  0000 C CNN
	1    9000 1750
	1    0    0    -1  
$EndComp
Text Label 8800 2300 0    60   ~ 0
TR
Text Label 7500 2000 2    60   ~ 0
AMPA1_CTRL
Text Label 7500 2200 2    60   ~ 0
AMPA2_CTRL
Text Label 7500 2400 2    60   ~ 0
AMPB1_CTRL
Text Label 8800 2100 0    60   ~ 0
AMPB2_CTRL
$Comp
L GND #PWR02
U 1 1 5982BDE0
P 7550 2700
F 0 "#PWR02" H 7550 2450 50  0001 C CNN
F 1 "GND" H 7550 2550 50  0000 C CNN
F 2 "" H 7550 2700 50  0000 C CNN
F 3 "" H 7550 2700 50  0000 C CNN
	1    7550 2700
	1    0    0    -1  
$EndComp
$Comp
L ADP7158 U205
U 1 1 598BA64A
P 8150 4550
F 0 "U205" H 7700 5000 60  0000 C CNN
F 1 "ADP7158" H 7800 5100 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-10-1EP_3x3mm_Pitch0.5mm" H 8150 4550 60  0001 C CNN
F 3 "" H 8150 4550 60  0001 C CNN
F 4 "ADP7158ACPZ-3.3-R7CT-ND" H 8150 4550 60  0001 C CNN "PN"
	1    8150 4550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C209
U 1 1 598D7C7B
P 9400 1600
F 0 "C209" H 9410 1670 50  0000 L CNN
F 1 "10 uF" H 9410 1520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9400 1600 50  0001 C CNN
F 3 "" H 9400 1600 50  0000 C CNN
	1    9400 1600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 598D7D01
P 9400 1750
F 0 "#PWR03" H 9400 1500 50  0001 C CNN
F 1 "GND" H 9400 1600 50  0000 C CNN
F 2 "" H 9400 1750 50  0000 C CNN
F 3 "" H 9400 1750 50  0000 C CNN
	1    9400 1750
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR04
U 1 1 598DD83D
P 7000 4200
F 0 "#PWR04" H 7000 4050 50  0001 C CNN
F 1 "+3V3" H 7000 4340 50  0000 C CNN
F 2 "" H 7000 4200 50  0000 C CNN
F 3 "" H 7000 4200 50  0000 C CNN
	1    7000 4200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C217
U 1 1 59903400
P 8900 4950
F 0 "C217" H 8910 5020 50  0000 L CNN
F 1 "1 uF" H 8910 4870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8900 4950 50  0001 C CNN
F 3 "" H 8900 4950 50  0000 C CNN
	1    8900 4950
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C218
U 1 1 59903612
P 9300 4950
F 0 "C218" H 9310 5020 50  0000 L CNN
F 1 "1 uF" H 9310 4870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9300 4950 50  0001 C CNN
F 3 "" H 9300 4950 50  0000 C CNN
	1    9300 4950
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C219
U 1 1 5990369E
P 9700 4950
F 0 "C219" H 9710 5020 50  0000 L CNN
F 1 "10 uF" H 9710 4870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9700 4950 50  0001 C CNN
F 3 "" H 9700 4950 50  0000 C CNN
	1    9700 4950
	-1   0    0    -1  
$EndComp
$Comp
L VPP #PWR05
U 1 1 59903DFA
P 9700 4200
F 0 "#PWR05" H 9700 4050 50  0001 C CNN
F 1 "VPP" H 9700 4350 50  0000 C CNN
F 2 "" H 9700 4200 50  0000 C CNN
F 3 "" H 9700 4200 50  0000 C CNN
	1    9700 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 599045BA
P 8900 5300
F 0 "#PWR06" H 8900 5050 50  0001 C CNN
F 1 "GND" H 8900 5150 50  0000 C CNN
F 2 "" H 8900 5300 50  0000 C CNN
F 3 "" H 8900 5300 50  0000 C CNN
	1    8900 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 59904683
P 9300 5300
F 0 "#PWR07" H 9300 5050 50  0001 C CNN
F 1 "GND" H 9300 5150 50  0000 C CNN
F 2 "" H 9300 5300 50  0000 C CNN
F 3 "" H 9300 5300 50  0000 C CNN
	1    9300 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 599046FD
P 9700 5300
F 0 "#PWR08" H 9700 5050 50  0001 C CNN
F 1 "GND" H 9700 5150 50  0000 C CNN
F 2 "" H 9700 5300 50  0000 C CNN
F 3 "" H 9700 5300 50  0000 C CNN
	1    9700 5300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C216
U 1 1 59904B03
P 7300 4950
F 0 "C216" H 7310 5020 50  0000 L CNN
F 1 "1 uF" H 7310 4870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7300 4950 50  0001 C CNN
F 3 "" H 7300 4950 50  0000 C CNN
	1    7300 4950
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C215
U 1 1 59904CA7
P 7000 4950
F 0 "C215" H 7010 5020 50  0000 L CNN
F 1 "10 uF" H 7010 4870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7000 4950 50  0001 C CNN
F 3 "" H 7000 4950 50  0000 C CNN
	1    7000 4950
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 599050DD
P 7300 5300
F 0 "#PWR09" H 7300 5050 50  0001 C CNN
F 1 "GND" H 7300 5150 50  0000 C CNN
F 2 "" H 7300 5300 50  0000 C CNN
F 3 "" H 7300 5300 50  0000 C CNN
	1    7300 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5990515D
P 7000 5300
F 0 "#PWR010" H 7000 5050 50  0001 C CNN
F 1 "GND" H 7000 5150 50  0000 C CNN
F 2 "" H 7000 5300 50  0000 C CNN
F 3 "" H 7000 5300 50  0000 C CNN
	1    7000 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 59905965
P 8150 5300
F 0 "#PWR011" H 8150 5050 50  0001 C CNN
F 1 "GND" H 8150 5150 50  0000 C CNN
F 2 "" H 8150 5300 50  0000 C CNN
F 3 "" H 8150 5300 50  0000 C CNN
	1    8150 5300
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR012
U 1 1 5990693F
P 7500 5100
F 0 "#PWR012" H 7500 4950 50  0001 C CNN
F 1 "VPP" H 7500 5250 50  0000 C CNN
F 2 "" H 7500 5100 50  0000 C CNN
F 3 "" H 7500 5100 50  0000 C CNN
	1    7500 5100
	-1   0    0    1   
$EndComp
$Comp
L +3V3 #PWR013
U 1 1 5991D035
P 9000 1050
F 0 "#PWR013" H 9000 900 50  0001 C CNN
F 1 "+3V3" H 9000 1190 50  0000 C CNN
F 2 "" H 9000 1050 50  0000 C CNN
F 3 "" H 9000 1050 50  0000 C CNN
	1    9000 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5983E2EE
P 1800 7450
F 0 "#PWR014" H 1800 7200 50  0001 C CNN
F 1 "GND" H 1800 7300 50  0000 C CNN
F 2 "" H 1800 7450 50  0000 C CNN
F 3 "" H 1800 7450 50  0000 C CNN
	1    1800 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4750 7500 5100
Wire Wire Line
	7550 4750 7500 4750
Wire Wire Line
	7550 4650 7300 4650
Connection ~ 7000 4350
Wire Wire Line
	8150 5200 8150 5300
Wire Wire Line
	7300 5050 7300 5300
Wire Wire Line
	7000 5050 7000 5300
Wire Wire Line
	7300 4650 7300 4850
Wire Wire Line
	8900 5050 8900 5300
Wire Wire Line
	9300 5050 9300 5300
Wire Wire Line
	9700 5050 9700 5300
Wire Wire Line
	9300 4550 9300 4850
Wire Wire Line
	8750 4550 9300 4550
Connection ~ 8800 4750
Wire Wire Line
	8800 4650 8800 4750
Wire Wire Line
	8750 4650 8800 4650
Wire Wire Line
	8900 4750 8900 4850
Wire Wire Line
	8750 4750 8900 4750
Connection ~ 9700 4450
Connection ~ 8900 4450
Wire Wire Line
	9700 4200 9700 4850
Wire Wire Line
	8750 4450 9700 4450
Wire Wire Line
	8900 4350 8900 4450
Wire Wire Line
	8750 4350 8900 4350
Connection ~ 7450 4450
Wire Wire Line
	7450 4550 7550 4550
Connection ~ 7450 4350
Wire Wire Line
	7450 4350 7450 4550
Wire Wire Line
	7550 4450 7450 4450
Wire Wire Line
	7000 4200 7000 4850
Wire Wire Line
	7000 4350 7550 4350
Wire Wire Line
	9400 1450 9400 1500
Wire Wire Line
	9400 1700 9400 1750
Connection ~ 8650 2400
Wire Wire Line
	8650 2500 8550 2500
Wire Wire Line
	8650 2400 8650 2500
Wire Wire Line
	8550 2400 9350 2400
Wire Wire Line
	8800 2300 8550 2300
Wire Wire Line
	8550 2200 9350 2200
Wire Wire Line
	8800 2100 8550 2100
Wire Wire Line
	7500 2000 7650 2000
Wire Wire Line
	7500 2200 7650 2200
Wire Wire Line
	7500 2400 7650 2400
Wire Wire Line
	6900 2500 7650 2500
Wire Wire Line
	6900 2300 7650 2300
Wire Wire Line
	6900 2100 7650 2100
Wire Wire Line
	7550 2600 7550 2700
Wire Wire Line
	7650 2600 7550 2600
Wire Wire Line
	8550 2600 9350 2600
Connection ~ 9000 1450
Wire Wire Line
	8650 2000 8550 2000
Wire Wire Line
	8650 1450 8650 2000
Wire Wire Line
	8650 1450 9400 1450
Wire Wire Line
	9000 1700 9000 1750
Wire Wire Line
	9000 1050 9000 1500
Wire Wire Line
	2300 6800 3300 6800
Wire Wire Line
	1900 7350 1900 7250
Connection ~ 1800 7350
Wire Wire Line
	1800 7250 1800 7450
Connection ~ 1700 7350
Wire Wire Line
	1700 7250 1700 7350
Wire Wire Line
	1600 7350 1900 7350
Wire Wire Line
	1600 7250 1600 7350
Wire Wire Line
	2150 2350 2850 2350
Wire Wire Line
	2150 2250 2950 2250
Wire Wire Line
	2150 2150 3050 2150
Wire Wire Line
	2150 2050 3150 2050
Wire Wire Line
	2150 1950 3350 1950
Wire Wire Line
	2150 1850 3350 1850
Wire Wire Line
	2150 1750 3350 1750
Wire Wire Line
	2150 1650 3350 1650
Wire Wire Line
	2150 1550 2900 1550
Wire Wire Line
	2150 1450 2800 1450
Wire Wire Line
	2150 1250 2700 1250
Wire Wire Line
	2150 1050 3350 1050
Wire Wire Line
	2250 1350 2150 1350
Wire Wire Line
	2150 1150 2250 1150
$Comp
L CONN_SMA U206
U 1 1 5983EAF5
P 1750 5600
F 0 "U206" H 1400 5800 60  0000 C CNN
F 1 "CONN_SMA" H 1800 5800 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 1750 5600 60  0001 C CNN
F 3 "" H 1750 5600 60  0000 C CNN
F 4 "CONSMA002-L-ND" H 1750 5600 60  0001 C CNN "PN"
	1    1750 5600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5983EAFB
P 1800 6250
F 0 "#PWR015" H 1800 6000 50  0001 C CNN
F 1 "GND" H 1800 6100 50  0000 C CNN
F 2 "" H 1800 6250 50  0000 C CNN
F 3 "" H 1800 6250 50  0000 C CNN
	1    1800 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6150 1900 6050
Connection ~ 1800 6150
Wire Wire Line
	1800 6050 1800 6250
Connection ~ 1700 6150
Wire Wire Line
	1700 6050 1700 6150
Wire Wire Line
	1600 6150 1900 6150
Wire Wire Line
	1600 6050 1600 6150
$Comp
L CONN_SMA U204
U 1 1 5983ED39
P 1750 4200
F 0 "U204" H 1400 4400 60  0000 C CNN
F 1 "CONN_SMA" H 1800 4400 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 1750 4200 60  0001 C CNN
F 3 "" H 1750 4200 60  0000 C CNN
F 4 "CONSMA002-L-ND" H 1750 4200 60  0001 C CNN "PN"
	1    1750 4200
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5983ED3F
P 1800 4850
F 0 "#PWR016" H 1800 4600 50  0001 C CNN
F 1 "GND" H 1800 4700 50  0000 C CNN
F 2 "" H 1800 4850 50  0000 C CNN
F 3 "" H 1800 4850 50  0000 C CNN
	1    1800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4750 1900 4650
Connection ~ 1800 4750
Wire Wire Line
	1800 4650 1800 4850
Connection ~ 1700 4750
Wire Wire Line
	1700 4650 1700 4750
Wire Wire Line
	1600 4750 1900 4750
Wire Wire Line
	1600 4650 1600 4750
$Comp
L CONN_SMA U202
U 1 1 5983ED50
P 1750 3000
F 0 "U202" H 1400 3200 60  0000 C CNN
F 1 "CONN_SMA" H 1800 3200 60  0000 C CNN
F 2 "footprints:SMA_rightangle" H 1750 3000 60  0001 C CNN
F 3 "" H 1750 3000 60  0000 C CNN
F 4 "CONSMA002-L-ND" H 1750 3000 60  0001 C CNN "PN"
	1    1750 3000
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5983ED56
P 1800 3650
F 0 "#PWR017" H 1800 3400 50  0001 C CNN
F 1 "GND" H 1800 3500 50  0000 C CNN
F 2 "" H 1800 3650 50  0000 C CNN
F 3 "" H 1800 3650 50  0000 C CNN
	1    1800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3550 1900 3450
Connection ~ 1800 3550
Wire Wire Line
	1800 3450 1800 3650
Connection ~ 1700 3550
Wire Wire Line
	1700 3450 1700 3550
Wire Wire Line
	1600 3550 1900 3550
Wire Wire Line
	1600 3450 1600 3550
Wire Wire Line
	2300 5600 3300 5600
Wire Wire Line
	2300 4200 3300 4200
Wire Wire Line
	2300 3000 3300 3000
$Comp
L R_PACK4 RP202
U 1 1 59842E26
P 3550 1600
F 0 "RP202" H 3550 2050 50  0000 C CNN
F 1 "1k" H 3550 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Concave_4x0603" H 3550 1600 50  0001 C CNN
F 3 "" H 3550 1600 50  0000 C CNN
F 4 "TC164J-1.0KCT-ND" H 3550 1600 60  0001 C CNN "PN"
	1    3550 1600
	1    0    0    1   
$EndComp
Text Label 4650 1200 0    60   ~ 0
AMPA1_CTRL
Text Label 4650 1300 0    60   ~ 0
AMPA2_CTRL
Text Label 4650 1600 0    60   ~ 0
AMPB1_CTRL
Text Label 4650 1700 0    60   ~ 0
AMPB2_CTRL
Text Label 4650 1100 0    60   ~ 0
TR
Wire Wire Line
	2700 1250 2700 1150
Wire Wire Line
	2700 1150 3350 1150
Wire Wire Line
	2800 1450 2800 1250
Wire Wire Line
	2800 1250 3350 1250
Wire Wire Line
	2900 1550 2900 1350
Wire Wire Line
	2900 1350 3350 1350
Wire Wire Line
	3150 2050 3150 2200
Wire Wire Line
	3150 2200 3350 2200
Wire Wire Line
	3050 2150 3050 2300
Wire Wire Line
	3050 2300 3350 2300
Wire Wire Line
	2950 2250 2950 2400
Wire Wire Line
	2950 2400 3350 2400
Wire Wire Line
	2850 2350 2850 2500
Wire Wire Line
	2850 2500 3350 2500
Wire Wire Line
	3950 1050 3750 1050
Wire Wire Line
	3950 1150 3750 1150
Wire Wire Line
	3950 1250 3750 1250
Wire Wire Line
	3750 1350 3950 1350
Wire Wire Line
	3950 1650 3750 1650
Wire Wire Line
	3750 1750 3950 1750
Wire Wire Line
	3750 1850 3950 1850
Wire Wire Line
	3750 1950 3950 1950
Wire Wire Line
	3750 2200 3950 2200
Wire Wire Line
	3750 2300 3950 2300
Wire Wire Line
	3750 2400 3950 2400
Wire Wire Line
	3750 2500 3950 2500
Wire Wire Line
	4650 1100 3850 1100
Wire Wire Line
	3850 1100 3850 1150
Connection ~ 3850 1150
Wire Wire Line
	4650 1200 3850 1200
Wire Wire Line
	3850 1200 3850 1250
Connection ~ 3850 1250
Wire Wire Line
	4650 1300 3850 1300
Wire Wire Line
	3850 1300 3850 1350
Connection ~ 3850 1350
Wire Wire Line
	4650 1600 3850 1600
Wire Wire Line
	3850 1600 3850 1650
Connection ~ 3850 1650
Wire Wire Line
	4650 1700 3850 1700
Wire Wire Line
	3850 1700 3850 1750
Connection ~ 3850 1750
Text Notes 3950 2900 0    60   ~ 0
TODO: add IO header\n
$Comp
L GND #PWR018
U 1 1 5986664A
P 2250 1350
F 0 "#PWR018" H 2250 1100 50  0001 C CNN
F 1 "GND" H 2250 1200 50  0000 C CNN
F 2 "" H 2250 1350 50  0000 C CNN
F 3 "" H 2250 1350 50  0000 C CNN
	1    2250 1350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR019
U 1 1 598666AA
P 2250 1150
F 0 "#PWR019" H 2250 900 50  0001 C CNN
F 1 "GND" H 2250 1000 50  0000 C CNN
F 2 "" H 2250 1150 50  0000 C CNN
F 3 "" H 2250 1150 50  0000 C CNN
	1    2250 1150
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
