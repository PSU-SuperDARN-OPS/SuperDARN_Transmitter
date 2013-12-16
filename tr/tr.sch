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
LIBS:l6388e
LIBS:sma
LIBS:lt1631
LIBS:tr-cache
EELAYER 27 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "High Power TX/RX Switch"
Date "16 dec 2013"
Rev "0"
Comp "Geophysical Institute, University of Alaska, Fairbanks"
Comment1 "Jon Klein"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MOSFET_N Q3
U 1 1 52AA0349
P 6900 7550
F 0 "Q3" H 6910 7720 60  0000 R CNN
F 1 "STD2NK90ZT4" H 6910 7400 60  0000 R CNN
F 2 "TO-252-3" H 6900 7550 60  0000 C CNN
F 3 "~" H 6900 7550 60  0000 C CNN
	1    6900 7550
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_N Q4
U 1 1 52AA0358
P 6900 9150
F 0 "Q4" H 6910 9320 60  0000 R CNN
F 1 "STD2NK90ZT4" H 6910 9000 60  0000 R CNN
F 2 "TO-252-3" H 6900 9150 60  0000 C CNN
F 3 "~" H 6900 9150 60  0000 C CNN
	1    6900 9150
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 52AA0385
P 7400 8000
F 0 "C5" H 7400 8100 40  0000 L CNN
F 1 "68nF" H 7406 7915 40  0000 L CNN
F 2 "0805" H 7438 7850 30  0000 C CNN
F 3 "~" H 7400 8000 60  0000 C CNN
	1    7400 8000
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 52AA0394
P 6350 7550
F 0 "R4" V 6430 7550 40  0000 C CNN
F 1 "1k" V 6357 7551 40  0000 C CNN
F 2 "0805" V 6280 7550 30  0000 C CNN
F 3 "~" H 6350 7550 30  0000 C CNN
	1    6350 7550
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 52AA03A3
P 6350 9150
F 0 "R5" V 6430 9150 40  0000 C CNN
F 1 "1k" V 6357 9151 40  0000 C CNN
F 2 "0805" V 6280 9150 30  0000 C CNN
F 3 "~" H 6350 9150 30  0000 C CNN
	1    6350 9150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR4
U 1 1 52AA03B2
P 4450 8900
F 0 "#PWR4" H 4450 8900 30  0001 C CNN
F 1 "GND" H 4450 8830 30  0001 C CNN
F 2 "" H 4450 8900 60  0000 C CNN
F 3 "" H 4450 8900 60  0000 C CNN
	1    4450 8900
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR11
U 1 1 52AA03C1
P 7000 7100
F 0 "#PWR11" H 7000 7200 30  0001 C CNN
F 1 "VDD" H 7000 7210 30  0000 C CNN
F 2 "" H 7000 7100 60  0000 C CNN
F 3 "" H 7000 7100 60  0000 C CNN
	1    7000 7100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR2
U 1 1 52AA03F1
P 3850 8350
F 0 "#PWR2" H 3850 8450 30  0001 C CNN
F 1 "VCC" H 3850 8450 30  0000 C CNN
F 2 "" H 3850 8350 60  0000 C CNN
F 3 "" H 3850 8350 60  0000 C CNN
	1    3850 8350
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 52AA05B6
P 4150 8650
F 0 "C1" H 4150 8750 40  0000 L CNN
F 1 "100nF" H 4156 8565 40  0000 L CNN
F 2 "0805" H 4188 8500 30  0000 C CNN
F 3 "~" H 4150 8650 60  0000 C CNN
	1    4150 8650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 52AA05D4
P 4150 8900
F 0 "#PWR3" H 4150 8900 30  0001 C CNN
F 1 "GND" H 4150 8830 30  0001 C CNN
F 2 "" H 4150 8900 60  0000 C CNN
F 3 "" H 4150 8900 60  0000 C CNN
	1    4150 8900
	1    0    0    -1  
$EndComp
$Comp
L L6388E U1
U 1 1 52AA02B1
P 5050 8150
F 0 "U1" H 4800 8450 60  0000 C CNN
F 1 "L6388E" H 4900 8550 60  0000 C CNN
F 2 "S0-8" H 5050 8150 60  0000 C CNN
F 3 "" H 5050 8150 60  0000 C CNN
	1    5050 8150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 52AA086D
P 7000 9450
F 0 "#PWR12" H 7000 9450 30  0001 C CNN
F 1 "GND" H 7000 9380 30  0001 C CNN
F 2 "" H 7000 9450 60  0000 C CNN
F 3 "" H 7000 9450 60  0000 C CNN
	1    7000 9450
	1    0    0    -1  
$EndComp
$Comp
L SMA J2
U 1 1 52AA0C17
P 7650 1950
F 0 "J2" H 7650 2200 60  0000 C CNN
F 1 "SMA" H 7650 2300 60  0000 C CNN
F 2 "~" H 7650 2200 60  0000 C CNN
F 3 "~" H 7650 2200 60  0000 C CNN
	1    7650 1950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR13
U 1 1 52AA0C4B
P 7550 1150
F 0 "#PWR13" H 7550 1150 30  0001 C CNN
F 1 "GND" H 7550 1080 30  0001 C CNN
F 2 "" H 7550 1150 60  0000 C CNN
F 3 "" H 7550 1150 60  0000 C CNN
	1    7550 1150
	-1   0    0    1   
$EndComp
$Comp
L C C11
U 1 1 52AA0D7B
P 9300 5300
F 0 "C11" H 9300 5400 40  0000 L CNN
F 1 ".022uF" H 9306 5215 40  0000 L CNN
F 2 "1210" H 9338 5150 30  0000 C CNN
F 3 "~" H 9300 5300 60  0000 C CNN
	1    9300 5300
	0    -1   -1   0   
$EndComp
$Comp
L SMA J3
U 1 1 52AA0DAF
P 10600 5400
F 0 "J3" H 10600 5650 60  0000 C CNN
F 1 "SMA" H 10600 5750 60  0000 C CNN
F 2 "~" H 10600 5650 60  0000 C CNN
F 3 "~" H 10600 5650 60  0000 C CNN
	1    10600 5400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR22
U 1 1 52AA0DB5
P 11400 5300
F 0 "#PWR22" H 11400 5300 30  0001 C CNN
F 1 "GND" H 11400 5230 30  0001 C CNN
F 2 "" H 11400 5300 60  0000 C CNN
F 3 "" H 11400 5300 60  0000 C CNN
	1    11400 5300
	0    -1   -1   0   
$EndComp
$Comp
L C C6
U 1 1 52AA0DC5
P 7550 3950
F 0 "C6" H 7550 4050 40  0000 L CNN
F 1 ".022uF" H 7556 3865 40  0000 L CNN
F 2 "1210" H 7588 3800 30  0000 C CNN
F 3 "~" H 7550 3950 60  0000 C CNN
	1    7550 3950
	-1   0    0    1   
$EndComp
$Comp
L SMA J1
U 1 1 52AA0DCB
P 4000 5200
F 0 "J1" H 4000 5450 60  0000 C CNN
F 1 "SMA" H 4000 5550 60  0000 C CNN
F 2 "~" H 4000 5450 60  0000 C CNN
F 3 "~" H 4000 5450 60  0000 C CNN
	1    4000 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 52AA0DD1
P 3200 5300
F 0 "#PWR1" H 3200 5300 30  0001 C CNN
F 1 "GND" H 3200 5230 30  0001 C CNN
F 2 "" H 3200 5300 60  0000 C CNN
F 3 "" H 3200 5300 60  0000 C CNN
	1    3200 5300
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 52AA0DE1
P 4750 5300
F 0 "C2" H 4750 5400 40  0000 L CNN
F 1 ".022uF" H 4756 5215 40  0000 L CNN
F 2 "1210" H 4788 5150 30  0000 C CNN
F 3 "~" H 4750 5300 60  0000 C CNN
	1    4750 5300
	0    1    1    0   
$EndComp
$Comp
L DIODE D2
U 1 1 52AA0FF9
P 5950 5300
F 0 "D2" H 5950 5400 40  0000 C CNN
F 1 "MA4P4006F-1091T" H 5950 5200 40  0000 C CNN
F 2 "MELF-1072" H 5950 5300 60  0000 C CNN
F 3 "~" H 5950 5300 60  0000 C CNN
	1    5950 5300
	-1   0    0    1   
$EndComp
$Comp
L DIODE D3
U 1 1 52AA1008
P 8100 5300
F 0 "D3" H 8100 5400 40  0000 C CNN
F 1 "MA4P7006F-1072T" H 8100 5200 40  0000 C CNN
F 2 "MELF-1072" H 8100 5300 60  0000 C CNN
F 3 "~" H 8100 5300 60  0000 C CNN
	1    8100 5300
	1    0    0    -1  
$EndComp
$Comp
L DIODE D5
U 1 1 52AA1017
P 8700 5300
F 0 "D5" H 8700 5400 40  0000 C CNN
F 1 "MA4P7006F-1072T" H 8700 5200 40  0000 C CNN
F 2 "MELF-1072" H 8700 5300 60  0000 C CNN
F 3 "~" H 8700 5300 60  0000 C CNN
	1    8700 5300
	-1   0    0    1   
$EndComp
$Comp
L INDUCTOR L4
U 1 1 52AA131D
P 8200 6200
F 0 "L4" V 8150 6200 40  0000 C CNN
F 1 "22uH" V 8300 6200 40  0000 C CNN
F 2 "~" H 8200 6200 60  0000 C CNN
F 3 "~" H 8200 6200 60  0000 C CNN
	1    8200 6200
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L2
U 1 1 52AA151D
P 6650 4450
F 0 "L2" V 6600 4450 40  0000 C CNN
F 1 "22uH" V 6750 4450 40  0000 C CNN
F 2 "~" H 6650 4450 60  0000 C CNN
F 3 "~" H 6650 4450 60  0000 C CNN
	1    6650 4450
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L5
U 1 1 52AA1523
P 9000 4450
F 0 "L5" V 8950 4450 40  0000 C CNN
F 1 "22uH" V 9100 4450 40  0000 C CNN
F 2 "~" H 9000 4450 60  0000 C CNN
F 3 "~" H 9000 4450 60  0000 C CNN
	1    9000 4450
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 52AA19DC
P 6350 4350
F 0 "C3" H 6350 4450 40  0000 L CNN
F 1 "10nF" H 6356 4265 40  0000 L CNN
F 2 "0805" H 6388 4200 30  0000 C CNN
F 3 "~" H 6350 4350 60  0000 C CNN
	1    6350 4350
	-1   0    0    1   
$EndComp
$Comp
L C C7
U 1 1 52AA19E2
P 8200 8750
F 0 "C7" H 8200 8850 40  0000 L CNN
F 1 ".022uF" H 8206 8665 40  0000 L CNN
F 2 "1210" H 8238 8600 30  0000 C CNN
F 3 "~" H 8200 8750 60  0000 C CNN
	1    8200 8750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR14
U 1 1 52AA19E8
P 8200 9450
F 0 "#PWR14" H 8200 9450 30  0001 C CNN
F 1 "GND" H 8200 9380 30  0001 C CNN
F 2 "" H 8200 9450 60  0000 C CNN
F 3 "" H 8200 9450 60  0000 C CNN
	1    8200 9450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 52AA19EF
P 6350 4650
F 0 "#PWR8" H 6350 4650 30  0001 C CNN
F 1 "GND" H 6350 4580 30  0001 C CNN
F 2 "" H 6350 4650 60  0000 C CNN
F 3 "" H 6350 4650 60  0000 C CNN
	1    6350 4650
	1    0    0    -1  
$EndComp
$Comp
L DIODE D7
U 1 1 52AA1B5A
P 9700 5800
F 0 "D7" H 9700 5900 40  0000 C CNN
F 1 "ES2A" H 9700 5700 40  0000 C CNN
F 2 "SMB" H 9700 5800 60  0000 C CNN
F 3 "~" H 9700 5800 60  0000 C CNN
	1    9700 5800
	0    1    1    0   
$EndComp
$Comp
L DIODE D8
U 1 1 52AA1B61
P 10000 5800
F 0 "D8" H 10000 5900 40  0000 C CNN
F 1 "ES2A" H 10000 5700 40  0000 C CNN
F 2 "SMB" H 10000 5800 60  0000 C CNN
F 3 "~" H 10000 5800 60  0000 C CNN
	1    10000 5800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR18
U 1 1 52AA201C
P 9700 6300
F 0 "#PWR18" H 9700 6300 30  0001 C CNN
F 1 "GND" H 9700 6230 30  0001 C CNN
F 2 "" H 9700 6300 60  0000 C CNN
F 3 "" H 9700 6300 60  0000 C CNN
	1    9700 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR20
U 1 1 52AA2023
P 10000 6300
F 0 "#PWR20" H 10000 6300 30  0001 C CNN
F 1 "GND" H 10000 6230 30  0001 C CNN
F 2 "" H 10000 6300 60  0000 C CNN
F 3 "" H 10000 6300 60  0000 C CNN
	1    10000 6300
	1    0    0    -1  
$EndComp
$Comp
L DIODE D4
U 1 1 52AA3DC3
P 8650 6800
F 0 "D4" H 8650 6900 40  0000 C CNN
F 1 "MA4P4006F-1091T" H 8650 6700 40  0000 C CNN
F 2 "MELF-1072" H 8650 6800 60  0000 C CNN
F 3 "~" H 8650 6800 60  0000 C CNN
	1    8650 6800
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 52AB9C51
P 9000 3400
F 0 "R11" V 9080 3400 40  0000 C CNN
F 1 "500" V 9007 3401 40  0000 C CNN
F 2 "0805" V 8930 3400 30  0000 C CNN
F 3 "~" H 9000 3400 30  0000 C CNN
	1    9000 3400
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 52ABA766
P 7000 8050
F 0 "R8" V 7080 8050 40  0000 C CNN
F 1 "0" V 7007 8051 40  0000 C CNN
F 2 "0805" V 6930 8050 30  0000 C CNN
F 3 "~" H 7000 8050 30  0000 C CNN
	1    7000 8050
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 52ABA4BB
P 7000 8650
F 0 "R9" H 7080 8650 40  0000 C CNN
F 1 "0" V 7007 8651 40  0000 C CNN
F 2 "0805" V 6930 8650 30  0000 C CNN
F 3 "~" H 7000 8650 30  0000 C CNN
	1    7000 8650
	1    0    0    -1  
$EndComp
Connection ~ 7000 8350
Wire Wire Line
	7000 8300 7000 8400
Wire Wire Line
	7000 8900 7000 8950
Wire Wire Line
	8200 5600 8650 5600
Wire Wire Line
	8400 5300 8400 5600
Connection ~ 7550 5300
Wire Wire Line
	7550 5300 7550 4150
Wire Wire Line
	5950 7550 6100 7550
Wire Wire Line
	5950 8250 5950 7550
Wire Wire Line
	7000 7750 7000 7800
Wire Wire Line
	5950 9150 5950 8450
Wire Wire Line
	6100 9150 5950 9150
Wire Wire Line
	9000 3650 9000 4150
Connection ~ 7800 5300
Wire Wire Line
	9000 4750 9000 5300
Connection ~ 6650 4050
Wire Wire Line
	10000 6000 10000 6300
Connection ~ 9700 5300
Wire Wire Line
	9700 5300 9700 5600
Wire Wire Line
	9700 6000 9700 6300
Wire Wire Line
	8200 5600 8200 5900
Wire Wire Line
	6350 3900 6350 4150
Wire Wire Line
	6650 4050 6350 4050
Wire Wire Line
	6350 4550 6350 4650
Connection ~ 9000 5300
Wire Wire Line
	8900 5300 9100 5300
Connection ~ 8400 5300
Wire Wire Line
	8300 5300 8500 5300
Connection ~ 5400 5300
Wire Wire Line
	4950 5300 5750 5300
Wire Wire Line
	4400 5300 4550 5300
Connection ~ 3350 5300
Wire Wire Line
	3350 5300 3200 5300
Connection ~ 3350 5350
Wire Wire Line
	3350 5350 3450 5350
Connection ~ 3350 5250
Wire Wire Line
	3450 5250 3350 5250
Wire Wire Line
	3350 5150 3450 5150
Wire Wire Line
	3350 5150 3350 5450
Wire Wire Line
	3350 5450 3450 5450
Connection ~ 11250 5300
Wire Wire Line
	11250 5300 11400 5300
Connection ~ 11250 5250
Wire Wire Line
	11150 5250 11250 5250
Connection ~ 11250 5350
Wire Wire Line
	11250 5350 11150 5350
Wire Wire Line
	11250 5450 11150 5450
Wire Wire Line
	11250 5150 11250 5450
Wire Wire Line
	11150 5150 11250 5150
Wire Wire Line
	7550 2350 7550 3750
Connection ~ 7550 1300
Wire Wire Line
	7550 1300 7550 1150
Connection ~ 7500 1300
Wire Wire Line
	7500 1400 7500 1300
Connection ~ 7600 1300
Wire Wire Line
	7600 1300 7600 1400
Wire Wire Line
	7700 1300 7700 1400
Wire Wire Line
	7400 1300 7700 1300
Wire Wire Line
	7400 1400 7400 1300
Wire Wire Line
	7000 9350 7000 9450
Connection ~ 4150 8350
Wire Wire Line
	4150 8450 4150 8350
Wire Wire Line
	3850 8350 4500 8350
Wire Wire Line
	4150 8850 4150 8900
Wire Wire Line
	5950 8450 5600 8450
Wire Wire Line
	5950 8250 5600 8250
Wire Wire Line
	7000 7100 7000 7350
Wire Wire Line
	6600 7550 6700 7550
Wire Wire Line
	6600 9150 6700 9150
Wire Wire Line
	7400 6900 7400 7800
Wire Wire Line
	7400 6900 5800 6900
Wire Wire Line
	5800 6900 5800 8150
Wire Wire Line
	5800 8150 5600 8150
Wire Wire Line
	4450 8450 4450 8900
Wire Wire Line
	4500 8450 4450 8450
Wire Wire Line
	5600 8350 7500 8350
Connection ~ 7400 8350
Wire Wire Line
	7400 8350 7400 8200
$Comp
L R R10
U 1 1 52ABAF7B
P 7750 8350
F 0 "R10" V 7830 8350 40  0000 C CNN
F 1 "150" V 7757 8351 40  0000 C CNN
F 2 "0805" V 7680 8350 30  0000 C CNN
F 3 "~" H 7750 8350 30  0000 C CNN
	1    7750 8350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 5300 6650 4750
Connection ~ 6650 5300
Text Notes 3350 5000 0    60   ~ 0
TX
Text Notes 10500 4950 0    60   ~ 0
RX
Text Notes 7450 1050 0    60   ~ 0
ANT
Wire Wire Line
	8000 8350 8200 8350
Connection ~ 8200 8350
Wire Wire Line
	8200 6500 8200 8550
$Comp
L INDUCTOR L1
U 1 1 52ABB853
P 5400 5800
F 0 "L1" V 5350 5800 40  0000 C CNN
F 1 "22uH" V 5500 5800 40  0000 C CNN
F 2 "~" H 5400 5800 60  0000 C CNN
F 3 "~" H 5400 5800 60  0000 C CNN
	1    5400 5800
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 52ABB859
P 5400 6400
F 0 "D1" H 5400 6500 40  0000 C CNN
F 1 "ES2A" H 5400 6300 40  0000 C CNN
F 2 "SMB" H 5400 6400 60  0000 C CNN
F 3 "~" H 5400 6400 60  0000 C CNN
	1    5400 6400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR5
U 1 1 52ABB85F
P 5400 6700
F 0 "#PWR5" H 5400 6700 30  0001 C CNN
F 1 "GND" H 5400 6630 30  0001 C CNN
F 2 "" H 5400 6700 60  0000 C CNN
F 3 "" H 5400 6700 60  0000 C CNN
	1    5400 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6600 5400 6700
Wire Wire Line
	5400 6100 5400 6200
Wire Wire Line
	5400 5300 5400 5500
$Comp
L R R2
U 1 1 52ABBB39
P 5800 6150
F 0 "R2" V 5880 6150 40  0000 C CNN
F 1 "1k" V 5807 6151 40  0000 C CNN
F 2 "0805" V 5730 6150 30  0000 C CNN
F 3 "~" H 5800 6150 30  0000 C CNN
	1    5800 6150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 6150 5550 6150
Connection ~ 5400 6150
Wire Wire Line
	6100 6150 6050 6150
Wire Wire Line
	6100 5850 6100 6150
$Comp
L INDUCTOR L6
U 1 1 52ABBCCE
P 9150 6850
F 0 "L6" V 9100 6850 40  0000 C CNN
F 1 "22uH" V 9250 6850 40  0000 C CNN
F 2 "~" H 9150 6850 60  0000 C CNN
F 3 "~" H 9150 6850 60  0000 C CNN
	1    9150 6850
	1    0    0    -1  
$EndComp
$Comp
L DIODE D6
U 1 1 52ABBCD4
P 9150 7450
F 0 "D6" H 9150 7550 40  0000 C CNN
F 1 "ES2A" H 9150 7350 40  0000 C CNN
F 2 "SMB" H 9150 7450 60  0000 C CNN
F 3 "~" H 9150 7450 60  0000 C CNN
	1    9150 7450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR17
U 1 1 52ABBCDA
P 9150 7750
F 0 "#PWR17" H 9150 7750 30  0001 C CNN
F 1 "GND" H 9150 7680 30  0001 C CNN
F 2 "" H 9150 7750 60  0000 C CNN
F 3 "" H 9150 7750 60  0000 C CNN
	1    9150 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 7650 9150 7750
Wire Wire Line
	9150 7150 9150 7250
$Comp
L R R13
U 1 1 52ABBCE2
P 9550 7200
F 0 "R13" V 9630 7200 40  0000 C CNN
F 1 "1k" V 9557 7201 40  0000 C CNN
F 2 "0805" V 9480 7200 30  0000 C CNN
F 3 "~" H 9550 7200 30  0000 C CNN
	1    9550 7200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9150 7200 9300 7200
Connection ~ 9150 7200
Wire Wire Line
	9850 7200 9800 7200
Wire Wire Line
	9850 6850 9850 7200
$Comp
L C C9
U 1 1 52ABBCEC
P 8650 6100
F 0 "C9" H 8650 6200 40  0000 L CNN
F 1 ".022uF" H 8656 6015 40  0000 L CNN
F 2 "1210" H 8688 5950 30  0000 C CNN
F 3 "~" H 8650 6100 60  0000 C CNN
	1    8650 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 5600 8650 5900
Connection ~ 8400 5600
Wire Wire Line
	8650 6300 8650 6600
Wire Wire Line
	8650 6450 9150 6450
Wire Wire Line
	9150 6450 9150 6550
Connection ~ 8650 6450
$Comp
L VCC #PWR7
U 1 1 52ABC73F
P 6100 5850
F 0 "#PWR7" H 6100 5950 30  0001 C CNN
F 1 "VCC" H 6100 5950 30  0000 C CNN
F 2 "" H 6100 5850 60  0000 C CNN
F 3 "" H 6100 5850 60  0000 C CNN
	1    6100 5850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR19
U 1 1 52ABC7DF
P 9850 6850
F 0 "#PWR19" H 9850 6950 30  0001 C CNN
F 1 "VCC" H 9850 6950 30  0000 C CNN
F 2 "" H 9850 6850 60  0000 C CNN
F 3 "" H 9850 6850 60  0000 C CNN
	1    9850 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5300 10200 5300
Wire Wire Line
	10000 5600 10000 5300
Connection ~ 10000 5300
Wire Wire Line
	8200 8950 8200 9450
$Comp
L CONN_3 K1
U 1 1 52ABD194
P 4900 950
F 0 "K1" V 4850 950 50  0000 C CNN
F 1 "CONN_3" V 4950 950 40  0000 C CNN
F 2 "~" H 4900 950 60  0000 C CNN
F 3 "~" H 4900 950 60  0000 C CNN
	1    4900 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR21
U 1 1 52ABD1A1
P 4050 950
F 0 "#PWR21" H 4050 950 30  0001 C CNN
F 1 "GND" H 4050 880 30  0001 C CNN
F 2 "" H 4050 950 60  0000 C CNN
F 3 "" H 4050 950 60  0000 C CNN
	1    4050 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 950  4050 950 
Wire Wire Line
	4550 850  4050 850 
Wire Wire Line
	4550 1050 4050 1050
Text Label 4100 850  0    60   ~ 0
E2
Text Label 4100 1050 0    60   ~ 0
E1
Text Notes 11350 1700 0    60   ~ 0
22uH - SRN3015-220MCT-ND	
Wire Wire Line
	6650 3650 6650 4150
Wire Wire Line
	7300 5300 7900 5300
Connection ~ 7750 5300
$Comp
L C C?
U 1 1 52AE36E3
P 7100 5300
F 0 "C?" H 7100 5400 40  0000 L CNN
F 1 ".022uF" H 7106 5215 40  0000 L CNN
F 2 "1210" H 7138 5150 30  0000 C CNN
F 3 "~" H 7100 5300 60  0000 C CNN
	1    7100 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 5300 6900 5300
$Comp
L INDUCTOR L?
U 1 1 52AE3960
P 7800 4450
F 0 "L?" V 7750 4450 40  0000 C CNN
F 1 "22uH" V 7900 4450 40  0000 C CNN
F 2 "~" H 7800 4450 60  0000 C CNN
F 3 "~" H 7800 4450 60  0000 C CNN
	1    7800 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3650 7800 4150
Wire Wire Line
	7800 4750 7800 5300
Wire Wire Line
	7800 5300 7750 5300
Text Notes 11150 2100 0    60   ~ 0
.022 uF 1210  C1210X223KFRACTU
Text Notes 5750 5150 0    60   ~ 0
40 mA on\n
Text Notes 8200 5100 0    60   ~ 0
20 mA on\n
Text Notes 8500 7000 1    60   ~ 0
20 mA on\n\n
$Comp
L LT1631 U?
U 1 1 52AE53E8
P 3500 2000
F 0 "U?" H 3500 2450 60  0000 C CNN
F 1 "LT1631" H 3500 2550 60  0000 C CNN
F 2 "~" H 3500 2450 60  0000 C CNN
F 3 "~" H 3500 2450 60  0000 C CNN
	1    3500 2000
	1    0    0    -1  
$EndComp
$Comp
L VEE #PWR?
U 1 1 52AE53F7
P 6100 2000
F 0 "#PWR?" H 6100 2200 40  0001 C CNN
F 1 "VEE" H 6100 2150 40  0000 C CNN
F 2 "" H 6100 2000 60  0000 C CNN
F 3 "" H 6100 2000 60  0000 C CNN
	1    6100 2000
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 52AE5410
P 900 2000
F 0 "#PWR?" H 900 2100 30  0001 C CNN
F 1 "VCC" H 900 2100 30  0000 C CNN
F 2 "" H 900 2000 60  0000 C CNN
F 3 "" H 900 2000 60  0000 C CNN
	1    900  2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  2000 2900 2000
Wire Wire Line
	4100 2000 6100 2000
$Comp
L R R?
U 1 1 52AE55A8
P 7800 3400
F 0 "R?" V 7880 3400 40  0000 C CNN
F 1 "500" V 7807 3401 40  0000 C CNN
F 2 "0805" V 7730 3400 30  0000 C CNN
F 3 "~" H 7800 3400 30  0000 C CNN
	1    7800 3400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 52AE5748
P 5800 2250
F 0 "C?" H 5800 2350 40  0000 L CNN
F 1 "10nF" H 5806 2165 40  0000 L CNN
F 2 "~" H 5838 2100 30  0000 C CNN
F 3 "~" H 5800 2250 60  0000 C CNN
	1    5800 2250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 52AE5757
P 6050 2250
F 0 "C?" H 6050 2350 40  0000 L CNN
F 1 "C" H 6056 2165 40  0000 L CNN
F 2 "~" H 6088 2100 30  0000 C CNN
F 3 "~" H 6050 2250 60  0000 C CNN
	1    6050 2250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 52AE5766
P 1250 2250
F 0 "C?" H 1250 2350 40  0000 L CNN
F 1 "10nF" H 1256 2165 40  0000 L CNN
F 2 "~" H 1288 2100 30  0000 C CNN
F 3 "~" H 1250 2250 60  0000 C CNN
	1    1250 2250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 52AE5775
P 1000 2250
F 0 "C?" H 1000 2350 40  0000 L CNN
F 1 "C" H 1006 2165 40  0000 L CNN
F 2 "~" H 1038 2100 30  0000 C CNN
F 3 "~" H 1000 2250 60  0000 C CNN
	1    1000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2050 1000 2000
Connection ~ 1000 2000
Wire Wire Line
	1250 2050 1250 2000
Connection ~ 1250 2000
Wire Wire Line
	6050 2050 6050 2000
Connection ~ 6050 2000
Wire Wire Line
	5800 2050 5800 2000
Connection ~ 5800 2000
$Comp
L GND #PWR?
U 1 1 52AE5DCB
P 1000 2500
F 0 "#PWR?" H 1000 2500 30  0001 C CNN
F 1 "GND" H 1000 2430 30  0001 C CNN
F 2 "" H 1000 2500 60  0000 C CNN
F 3 "" H 1000 2500 60  0000 C CNN
	1    1000 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 52AE5DDA
P 1250 2500
F 0 "#PWR?" H 1250 2500 30  0001 C CNN
F 1 "GND" H 1250 2430 30  0001 C CNN
F 2 "" H 1250 2500 60  0000 C CNN
F 3 "" H 1250 2500 60  0000 C CNN
	1    1250 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 52AE5DE9
P 5800 2500
F 0 "#PWR?" H 5800 2500 30  0001 C CNN
F 1 "GND" H 5800 2430 30  0001 C CNN
F 2 "" H 5800 2500 60  0000 C CNN
F 3 "" H 5800 2500 60  0000 C CNN
	1    5800 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 52AE5E07
P 6050 2500
F 0 "#PWR?" H 6050 2500 30  0001 C CNN
F 1 "GND" H 6050 2430 30  0001 C CNN
F 2 "" H 6050 2500 60  0000 C CNN
F 3 "" H 6050 2500 60  0000 C CNN
	1    6050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2500 6050 2450
Wire Wire Line
	5800 2450 5800 2500
Wire Wire Line
	1000 2450 1000 2500
Wire Wire Line
	1250 2450 1250 2500
$Comp
L GND #PWR?
U 1 1 52AE617B
P 2650 2100
F 0 "#PWR?" H 2650 2100 30  0001 C CNN
F 1 "GND" H 2650 2030 30  0001 C CNN
F 2 "" H 2650 2100 60  0000 C CNN
F 3 "" H 2650 2100 60  0000 C CNN
	1    2650 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 2100 2900 2100
$Comp
L GND #PWR?
U 1 1 52AE624A
P 2650 1900
F 0 "#PWR?" H 2650 1900 30  0001 C CNN
F 1 "GND" H 2650 1830 30  0001 C CNN
F 2 "" H 2650 1900 60  0000 C CNN
F 3 "" H 2650 1900 60  0000 C CNN
	1    2650 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 1900 2900 1900
$Comp
L GND #PWR?
U 1 1 52AE6251
P 4350 1900
F 0 "#PWR?" H 4350 1900 30  0001 C CNN
F 1 "GND" H 4350 1830 30  0001 C CNN
F 2 "" H 4350 1900 60  0000 C CNN
F 3 "" H 4350 1900 60  0000 C CNN
	1    4350 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 1900 4100 1900
$Comp
L GND #PWR?
U 1 1 52AE6258
P 4350 2100
F 0 "#PWR?" H 4350 2100 30  0001 C CNN
F 1 "GND" H 4350 2030 30  0001 C CNN
F 2 "" H 4350 2100 60  0000 C CNN
F 3 "" H 4350 2100 60  0000 C CNN
	1    4350 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 2100 4100 2100
$Comp
L R R?
U 1 1 52AE6261
P 1950 1800
F 0 "R?" V 2030 1800 40  0000 C CNN
F 1 "10k" V 1957 1801 40  0000 C CNN
F 2 "~" V 1880 1800 30  0000 C CNN
F 3 "~" H 1950 1800 30  0000 C CNN
	1    1950 1800
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 52AE626E
P 2550 1700
F 0 "R?" V 2630 1700 40  0000 C CNN
F 1 "20k" V 2557 1701 40  0000 C CNN
F 2 "~" V 2480 1700 30  0000 C CNN
F 3 "~" H 2550 1700 30  0000 C CNN
	1    2550 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 1700 2900 1700
Wire Wire Line
	2200 1800 2900 1800
Wire Wire Line
	2300 1700 2250 1700
Wire Wire Line
	2250 1700 2250 1800
Connection ~ 2250 1800
$Comp
L R R?
U 1 1 52AE65D7
P 1950 2200
F 0 "R?" V 2030 2200 40  0000 C CNN
F 1 "10k" V 1957 2201 40  0000 C CNN
F 2 "~" V 1880 2200 30  0000 C CNN
F 3 "~" H 1950 2200 30  0000 C CNN
	1    1950 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 2200 2900 2200
Connection ~ 2250 2200
$Comp
L R R?
U 1 1 52AE65E7
P 2550 2300
F 0 "R?" V 2630 2300 40  0000 C CNN
F 1 "20k" V 2557 2301 40  0000 C CNN
F 2 "~" V 2480 2300 30  0000 C CNN
F 3 "~" H 2550 2300 30  0000 C CNN
	1    2550 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 2300 2900 2300
Wire Wire Line
	2300 2300 2250 2300
Wire Wire Line
	2250 2300 2250 2200
$Comp
L R R?
U 1 1 52AE672D
P 4450 2300
F 0 "R?" V 4530 2300 40  0000 C CNN
F 1 "20k" V 4457 2301 40  0000 C CNN
F 2 "~" V 4380 2300 30  0000 C CNN
F 3 "~" H 4450 2300 30  0000 C CNN
	1    4450 2300
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 52AE6733
P 4450 1700
F 0 "R?" V 4530 1700 40  0000 C CNN
F 1 "20k" V 4457 1701 40  0000 C CNN
F 2 "~" V 4380 1700 30  0000 C CNN
F 3 "~" H 4450 1700 30  0000 C CNN
	1    4450 1700
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 52AE6739
P 5050 1800
F 0 "R?" V 5130 1800 40  0000 C CNN
F 1 "10k" V 5057 1801 40  0000 C CNN
F 2 "~" V 4980 1800 30  0000 C CNN
F 3 "~" H 5050 1800 30  0000 C CNN
	1    5050 1800
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 52AE673F
P 5050 2200
F 0 "R?" V 5130 2200 40  0000 C CNN
F 1 "10k" V 5057 2201 40  0000 C CNN
F 2 "~" V 4980 2200 30  0000 C CNN
F 3 "~" H 5050 2200 30  0000 C CNN
	1    5050 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 1700 4200 1700
Wire Wire Line
	4100 1800 4800 1800
Wire Wire Line
	4700 1700 4750 1700
Wire Wire Line
	4750 1700 4750 1800
Connection ~ 4750 1800
Wire Wire Line
	4100 2200 4800 2200
Wire Wire Line
	4100 2300 4200 2300
Wire Wire Line
	4700 2300 4750 2300
Wire Wire Line
	4750 2300 4750 2200
Connection ~ 4750 2200
Connection ~ 2850 2300
Wire Wire Line
	4150 2300 4150 2500
Connection ~ 4150 2300
$Comp
L C C?
U 1 1 52AE6FA3
P 8750 4450
F 0 "C?" H 8750 4550 40  0000 L CNN
F 1 "10nF" H 8756 4365 40  0000 L CNN
F 2 "0805" H 8788 4300 30  0000 C CNN
F 3 "~" H 8750 4450 60  0000 C CNN
	1    8750 4450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 52AE6FA9
P 8750 4750
F 0 "#PWR?" H 8750 4750 30  0001 C CNN
F 1 "GND" H 8750 4680 30  0001 C CNN
F 2 "" H 8750 4750 60  0000 C CNN
F 3 "" H 8750 4750 60  0000 C CNN
	1    8750 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3850 8750 4250
Wire Wire Line
	8750 4650 8750 4750
$Comp
L C C?
U 1 1 52AE6FB2
P 8200 4450
F 0 "C?" H 8200 4550 40  0000 L CNN
F 1 "10nF" H 8206 4365 40  0000 L CNN
F 2 "0805" H 8238 4300 30  0000 C CNN
F 3 "~" H 8200 4450 60  0000 C CNN
	1    8200 4450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 52AE6FB8
P 8200 4750
F 0 "#PWR?" H 8200 4750 30  0001 C CNN
F 1 "GND" H 8200 4680 30  0001 C CNN
F 2 "" H 8200 4750 60  0000 C CNN
F 3 "" H 8200 4750 60  0000 C CNN
	1    8200 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4650 8200 4750
Wire Wire Line
	9000 4050 8750 4050
Connection ~ 9000 4050
Wire Wire Line
	7800 4050 8200 4050
Wire Wire Line
	8200 3850 8200 4250
Connection ~ 7800 4050
$Comp
L R R?
U 1 1 52AE7113
P 6650 3400
F 0 "R?" V 6730 3400 40  0000 C CNN
F 1 "400" V 6657 3401 40  0000 C CNN
F 2 "0805" V 6580 3400 30  0000 C CNN
F 3 "~" H 6650 3400 30  0000 C CNN
	1    6650 3400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 52AE747D
P 8200 3050
F 0 "C?" H 8200 3150 40  0000 L CNN
F 1 "100pF" H 8206 2965 40  0000 L CNN
F 2 "0805" H 8238 2900 30  0000 C CNN
F 3 "~" H 8200 3050 60  0000 C CNN
	1    8200 3050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 52AE748C
P 8200 3600
F 0 "R?" V 8280 3600 40  0000 C CNN
F 1 "22" V 8207 3601 40  0000 C CNN
F 2 "0805" V 8130 3600 30  0000 C CNN
F 3 "~" H 8200 3600 30  0000 C CNN
	1    8200 3600
	1    0    0    -1  
$EndComp
Connection ~ 8200 4050
Wire Wire Line
	8200 3250 8200 3350
$Comp
L C C?
U 1 1 52AE76F5
P 8750 3050
F 0 "C?" H 8750 3150 40  0000 L CNN
F 1 "100pF" H 8756 2965 40  0000 L CNN
F 2 "0805" H 8788 2900 30  0000 C CNN
F 3 "~" H 8750 3050 60  0000 C CNN
	1    8750 3050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 52AE76FB
P 8750 3600
F 0 "R?" V 8830 3600 40  0000 C CNN
F 1 "22" V 8757 3601 40  0000 C CNN
F 2 "0805" V 8680 3600 30  0000 C CNN
F 3 "~" H 8750 3600 30  0000 C CNN
	1    8750 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3250 8750 3350
Connection ~ 8750 4050
Wire Wire Line
	7800 3150 7800 2700
Wire Wire Line
	7800 2700 8200 2700
Wire Wire Line
	8200 2600 8200 2850
Wire Wire Line
	8750 2600 8750 2850
Wire Wire Line
	8750 2700 9000 2700
Wire Wire Line
	9000 2700 9000 3150
$Comp
L C C?
U 1 1 52AE7917
P 6350 3100
F 0 "C?" H 6350 3200 40  0000 L CNN
F 1 "100pF" H 6356 3015 40  0000 L CNN
F 2 "0805" H 6388 2950 30  0000 C CNN
F 3 "~" H 6350 3100 60  0000 C CNN
	1    6350 3100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 52AE791D
P 6350 3650
F 0 "R?" V 6430 3650 40  0000 C CNN
F 1 "22" V 6357 3651 40  0000 C CNN
F 2 "0805" V 6280 3650 30  0000 C CNN
F 3 "~" H 6350 3650 30  0000 C CNN
	1    6350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3300 6350 3400
Connection ~ 6350 4050
Wire Wire Line
	6350 2900 6350 2750
Wire Wire Line
	6350 2750 6650 2750
Wire Wire Line
	6650 2650 6650 3150
$Comp
L R R?
U 1 1 52AE7C16
P 8900 8800
F 0 "R?" V 8980 8800 40  0000 C CNN
F 1 "500" V 8907 8801 40  0000 C CNN
F 2 "0805" V 8830 8800 30  0000 C CNN
F 3 "~" H 8900 8800 30  0000 C CNN
	1    8900 8800
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 52AE7C1F
P 8650 7950
F 0 "C?" H 8650 8050 40  0000 L CNN
F 1 ".022uF 100V" H 8656 7865 40  0000 L CNN
F 2 "~" H 8688 7800 30  0000 C CNN
F 3 "~" H 8650 7950 60  0000 C CNN
	1    8650 7950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 52AE7C2F
P 9150 9150
F 0 "C?" H 9150 9250 40  0000 L CNN
F 1 "100pF" H 9156 9065 40  0000 L CNN
F 2 "0805" H 9188 9000 30  0000 C CNN
F 3 "~" H 9150 9150 60  0000 C CNN
	1    9150 9150
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 52AE7C35
P 9150 8600
F 0 "R?" V 9230 8600 40  0000 C CNN
F 1 "22" V 9157 8601 40  0000 C CNN
F 2 "0805" V 9080 8600 30  0000 C CNN
F 3 "~" H 9150 8600 30  0000 C CNN
	1    9150 8600
	-1   0    0    1   
$EndComp
Wire Wire Line
	9150 8950 9150 8850
Wire Wire Line
	9150 9350 9150 9500
Wire Wire Line
	9150 9500 8900 9500
Wire Wire Line
	8900 9050 8900 9650
Wire Wire Line
	8650 7000 8650 7750
Wire Wire Line
	8900 7600 8900 8550
Wire Wire Line
	8900 8250 9150 8250
Wire Wire Line
	9150 8250 9150 8350
Wire Wire Line
	8650 7600 8900 7600
Connection ~ 8900 8250
Connection ~ 8650 7600
$Comp
L GND #PWR?
U 1 1 52AE810E
P 8650 8250
F 0 "#PWR?" H 8650 8250 30  0001 C CNN
F 1 "GND" H 8650 8180 30  0001 C CNN
F 2 "" H 8650 8250 60  0000 C CNN
F 3 "" H 8650 8250 60  0000 C CNN
	1    8650 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 8150 8650 8250
Wire Wire Line
	4150 1550 4150 1700
Connection ~ 4150 1700
Wire Wire Line
	2850 1600 2850 1700
Connection ~ 2850 1700
Wire Wire Line
	2850 2300 2850 2550
Text Label 2850 1600 1    60   ~ 0
OUTA
Text Label 2850 2600 1    60   ~ 0
OUTB
Text Label 4150 2600 1    60   ~ 0
OUTC
Text Label 4150 1600 1    60   ~ 0
OUTD
Connection ~ 6650 2750
Text Label 6750 2750 1    60   ~ 0
OUTA
Connection ~ 8200 2700
Text Label 8300 2700 1    60   ~ 0
OUTB
Connection ~ 8900 9500
Connection ~ 8750 2700
Text Label 8750 2700 1    60   ~ 0
OUTC
Text Label 8900 9750 1    60   ~ 0
OUTD
Wire Wire Line
	1550 1800 1700 1800
Wire Wire Line
	1550 2200 1700 2200
Wire Wire Line
	5300 2200 5400 2200
Wire Wire Line
	5300 1800 5450 1800
Text Label 5350 1800 0    60   ~ 0
E1
Text Label 5350 2200 0    60   ~ 0
E2
Text Label 1550 1800 0    60   ~ 0
E2
Text Label 1550 2200 0    60   ~ 0
E2
$EndSCHEMATC