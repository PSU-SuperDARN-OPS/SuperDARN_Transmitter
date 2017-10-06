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
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 3650 950  0    60   ~ 0
mcmurdo receiver front end\ninputs: usrp tx and rx (2x), x300 GPIO header\noutputs: multiplexed tx/rx line (2x)\nfit in bud EXT-9166 case
$Sheet
S 2300 1650 1500 4500
U 597F80CC
F0 "usrp_io" 60
F1 "usrp_io.sch" 60
F2 "TXA" O R 3800 1800 60 
F3 "TXB" O R 3800 3700 60 
F4 "RXA" I R 3800 1900 60 
F5 "RXB" I R 3800 3800 60 
F6 "SYNC" I R 3800 5400 60 
F7 "AMPA2_CTRL" O R 3800 2350 60 
F8 "AMPA1_CTRL" O R 3800 2150 60 
F9 "AMPB1_CTRL" O R 3800 4050 60 
F10 "AMPB2_CTRL" O R 3800 4250 60 
F11 "ATT_SDI" O R 3800 3300 60 
F12 "ATT_SCK" O R 3800 3400 60 
F13 "ATT_A_LE" O R 3800 2800 60 
F14 "ATT_B_LE" O R 3800 4700 60 
F15 "AUX_IO_A" O R 3800 5600 60 
F16 "AUX_IO_B" O R 3800 5700 60 
F17 "~TR" O R 3800 5850 60 
F18 "~AMPB2_CTRL" O R 3800 4350 60 
F19 "~AMPB1_CTRL" O R 3800 4150 60 
F20 "~AMPA1_CTRL" O R 3800 2250 60 
F21 "~AMPA2_CTRL" O R 3800 2450 60 
F22 "AUX_TR" O R 3800 5500 60 
F23 "TR" O R 3800 5950 60 
$EndSheet
$Sheet
S 6650 1650 1950 4500
U 597F8189
F0 "ext_io" 60
F1 "ext_io.sch" 60
F2 "PHASING_MATRIX_A" B L 6650 2050 60 
F3 "PHASING_MATRIX_B" B L 6650 3950 60 
F4 "AUX_TR" I L 6650 5500 60 
F5 "SYNC" I L 6650 5400 60 
F6 "AUX_IO_A" I L 6650 5600 60 
F7 "AUX_IO_B" I L 6650 5700 60 
F8 "TX_OUT_A" I L 6650 2250 60 
F9 "TX_OUT_B" I L 6650 4100 60 
F10 "CPL_A" O L 6650 2450 59 
F11 "CPL_B" O L 6650 4250 59 
$EndSheet
Text Notes 2400 1450 0    60   ~ 0
50 mA on 3.3V rail
Wire Wire Line
	3800 1800 4450 1800
Wire Wire Line
	3800 1900 4450 1900
Wire Wire Line
	4450 2250 3800 2250
Wire Wire Line
	3800 2350 4450 2350
Wire Wire Line
	4450 2800 3800 2800
Wire Wire Line
	3800 5500 6650 5500
Text Label 3950 5950 0    60   ~ 0
TR
Text Label 4300 3100 2    60   ~ 0
TR
Wire Wire Line
	3800 3300 3900 3300
Wire Wire Line
	3800 3400 3900 3400
Text Label 3900 3300 0    60   ~ 0
SDI
Text Label 3900 3400 0    60   ~ 0
SCK
Text Label 4300 2600 2    60   ~ 0
SDI
Text Label 4300 2700 2    60   ~ 0
SCK
Wire Wire Line
	4300 2700 4450 2700
Wire Wire Line
	4300 2600 4450 2600
Wire Wire Line
	6100 2050 6650 2050
Wire Wire Line
	3800 5400 6650 5400
Wire Wire Line
	6650 5600 3800 5600
Wire Wire Line
	3800 5700 6650 5700
Wire Wire Line
	3950 5950 3800 5950
Text Label 3950 5850 0    60   ~ 0
~TR
Wire Wire Line
	3950 5850 3800 5850
$Sheet
S 4450 1650 1650 1600
U 597F80E0
F0 "rf_path_a" 60
F1 "rf_path.sch" 60
F2 "USRP_TX" I L 4450 1800 60 
F3 "AMP1_CTRL" I L 4450 2150 60 
F4 "AMP2_CTRL" I L 4450 2350 60 
F5 "USRP_RX" O L 4450 1900 60 
F6 "ATT_SDI" I L 4450 2600 60 
F7 "ATT_SCK" I L 4450 2700 60 
F8 "ATT_LE" I L 4450 2800 60 
F9 "TR" I L 4450 3100 60 
F10 "PHASING_MATRIX_OUT" B R 6100 2050 60 
F11 "~TR" I L 4450 3000 60 
F12 "~AMP1_CTRL" I L 4450 2250 60 
F13 "~AMP2_CTRL" I L 4450 2450 60 
F14 "TX_OUT" O R 6100 2250 60 
F15 "CPL_IN" I R 6100 2450 59 
$EndSheet
Wire Wire Line
	3800 2150 4450 2150
Wire Wire Line
	3800 2450 4450 2450
Wire Wire Line
	4300 3100 4450 3100
Text Label 4300 3000 2    60   ~ 0
~TR
Wire Wire Line
	4300 3000 4450 3000
Wire Wire Line
	3800 3700 4450 3700
Wire Wire Line
	3800 3800 4450 3800
Wire Wire Line
	4450 4150 3800 4150
Wire Wire Line
	3800 4250 4450 4250
Wire Wire Line
	4450 4700 3800 4700
Text Label 4300 5000 2    60   ~ 0
TR
Text Label 4300 4500 2    60   ~ 0
SDI
Text Label 4300 4600 2    60   ~ 0
SCK
Wire Wire Line
	4300 4600 4450 4600
Wire Wire Line
	4300 4500 4450 4500
Wire Wire Line
	6100 3950 6650 3950
$Sheet
S 4450 3550 1650 1600
U 598253CB
F0 "rf_path_b" 60
F1 "rf_path.sch" 60
F2 "USRP_TX" I L 4450 3700 60 
F3 "AMP1_CTRL" I L 4450 4050 60 
F4 "AMP2_CTRL" I L 4450 4250 60 
F5 "USRP_RX" O L 4450 3800 60 
F6 "ATT_SDI" I L 4450 4500 60 
F7 "ATT_SCK" I L 4450 4600 60 
F8 "ATT_LE" I L 4450 4700 60 
F9 "TR" I L 4450 5000 60 
F10 "PHASING_MATRIX_OUT" B R 6100 3950 60 
F11 "~TR" I L 4450 4900 60 
F12 "~AMP1_CTRL" I L 4450 4150 60 
F13 "~AMP2_CTRL" I L 4450 4350 60 
F14 "TX_OUT" O R 6100 4100 60 
F15 "CPL_IN" I R 6100 4250 59 
$EndSheet
Wire Wire Line
	3800 4050 4450 4050
Wire Wire Line
	3800 4350 4450 4350
Wire Wire Line
	4300 5000 4450 5000
Text Label 4300 4900 2    60   ~ 0
~TR
Wire Wire Line
	4300 4900 4450 4900
Text Notes 4450 1450 0    60   ~ 0
250 mA / channel on 3.3 V rail
Text Notes 6650 1450 0    60   ~ 0
5 mA on 3.3V rail
Text Notes 1300 950  0    60   ~ 0
fits in V1145-ND snap-in rack\nor, break off tabs for bud EXT-9166 case
Text Notes 8800 1200 0    60   ~ 0
todo:\n- fix resistor network part number with MacroFab
Wire Wire Line
	6100 2250 6650 2250
Wire Wire Line
	6100 4100 6650 4100
Wire Wire Line
	6100 2450 6650 2450
Wire Wire Line
	6100 4250 6650 4250
Text Notes 8800 1400 0    60   ~ 0
todo:\n- add buffered differential TR output
$EndSCHEMATC
