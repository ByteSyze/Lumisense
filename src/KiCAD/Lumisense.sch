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
LIBS:LumisenseLibrary
LIBS:Lumisense-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Lumisense - IR Motion Controlled Lighting"
Date "12/19/2016"
Rev "1"
Comp "Tyler Hackett"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ArduinoNano U1
U 1 1 58588697
P 5650 3100
F 0 "U1" H 6150 2250 60  0000 C CNN
F 1 "ArduinoNano" H 5650 3950 60  0000 C CNN
F 2 "" H 5650 3250 60  0001 C CNN
F 3 "" H 5650 3250 60  0001 C CNN
	1    5650 3100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR5
U 1 1 58588891
P 7900 1950
F 0 "#PWR5" H 7900 1800 50  0001 C CNN
F 1 "+12V" H 7900 2090 50  0000 C CNN
F 2 "" H 7900 1950 50  0000 C CNN
F 3 "" H 7900 1950 50  0000 C CNN
	1    7900 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 585888EA
P 7900 2900
F 0 "#PWR6" H 7900 2650 50  0001 C CNN
F 1 "GND" H 7900 2750 50  0000 C CNN
F 2 "" H 7900 2900 50  0000 C CNN
F 3 "" H 7900 2900 50  0000 C CNN
	1    7900 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 58588A49
P 4300 3100
F 0 "#PWR3" H 4300 2850 50  0001 C CNN
F 1 "GND" H 4300 2950 50  0000 C CNN
F 2 "" H 4300 3100 50  0000 C CNN
F 3 "" H 4300 3100 50  0000 C CNN
	1    4300 3100
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 58588CD7
P 7500 2450
F 0 "C1" H 7525 2550 50  0000 L CNN
F 1 "10uF" H 7525 2350 50  0000 L CNN
F 2 "" H 7500 2450 50  0000 C CNN
F 3 "" H 7500 2450 50  0000 C CNN
	1    7500 2450
	1    0    0    -1  
$EndComp
$Comp
L HC-SR501 U2
U 1 1 58589346
P 850 4500
F 0 "U2" H 850 4250 60  0000 C CNN
F 1 "HC-SR501" H 850 4750 60  0000 C CNN
F 2 "" H 650 4500 60  0001 C CNN
F 3 "" H 650 4500 60  0001 C CNN
	1    850  4500
	1    0    0    -1  
$EndComp
$Comp
L HC-SR501 U3
U 1 1 585893A8
P 850 5300
F 0 "U3" H 850 5050 60  0000 C CNN
F 1 "HC-SR501" H 850 5550 60  0000 C CNN
F 2 "" H 650 5300 60  0001 C CNN
F 3 "" H 650 5300 60  0001 C CNN
	1    850  5300
	1    0    0    -1  
$EndComp
$Comp
L HC-SR501 U4
U 1 1 585894BA
P 850 5900
F 0 "U4" H 850 5650 60  0000 C CNN
F 1 "HC-SR501" H 850 6150 60  0000 C CNN
F 2 "" H 650 5900 60  0001 C CNN
F 3 "" H 650 5900 60  0001 C CNN
	1    850  5900
	1    0    0    -1  
$EndComp
$Comp
L HC-SR501 U5
U 1 1 58589541
P 850 6500
F 0 "U5" H 850 6250 60  0000 C CNN
F 1 "HC-SR501" H 850 6750 60  0000 C CNN
F 2 "" H 650 6500 60  0001 C CNN
F 3 "" H 650 6500 60  0001 C CNN
	1    850  6500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR2
U 1 1 5858B184
P 1250 4150
F 0 "#PWR2" H 1250 4000 50  0001 C CNN
F 1 "+12V" H 1250 4290 50  0000 C CNN
F 2 "" H 1250 4150 50  0000 C CNN
F 3 "" H 1250 4150 50  0000 C CNN
	1    1250 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 5858B47E
P 1150 7000
F 0 "#PWR1" H 1150 6750 50  0001 C CNN
F 1 "GND" H 1150 6850 50  0000 C CNN
F 2 "" H 1150 7000 50  0000 C CNN
F 3 "" H 1150 7000 50  0000 C CNN
	1    1150 7000
	1    0    0    -1  
$EndComp
Text Notes 1450 6300 1    60   ~ 0
Optional sensors
$Comp
L RGB-LED-STRIP D1
U 1 1 5858D273
P 8950 2150
F 0 "D1" H 9100 1950 60  0000 C CNN
F 1 "RGB-LED-STRIP" H 8950 2400 60  0000 C CNN
F 2 "" H 8950 2150 60  0001 C CNN
F 3 "" H 8950 2150 60  0001 C CNN
	1    8950 2150
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 5858D74A
P 8300 2450
F 0 "C2" H 8325 2550 50  0000 L CNN
F 1 "100uF" H 8325 2350 50  0000 L CNN
F 2 "" H 8300 2450 50  0000 C CNN
F 3 "" H 8300 2450 50  0000 C CNN
	1    8300 2450
	1    0    0    -1  
$EndComp
$Comp
L PN2222A Q1
U 1 1 5858D8AA
P 9750 2600
F 0 "Q1" H 9950 2675 50  0000 L CNN
F 1 "PN2222A" H 9950 2600 50  0000 L CNN
F 2 "" H 9950 2525 50  0000 L CIN
F 3 "" H 9750 2600 50  0000 L CNN
	1    9750 2600
	1    0    0    -1  
$EndComp
$Comp
L PN2222A Q2
U 1 1 5858D90E
P 10200 2950
F 0 "Q2" H 10400 3025 50  0000 L CNN
F 1 "PN2222A" H 10400 2950 50  0000 L CNN
F 2 "" H 10400 2875 50  0000 L CIN
F 3 "" H 10200 2950 50  0000 L CNN
	1    10200 2950
	1    0    0    -1  
$EndComp
$Comp
L PN2222A Q3
U 1 1 5858DAB4
P 10650 3300
F 0 "Q3" H 10850 3375 50  0000 L CNN
F 1 "PN2222A" H 10850 3300 50  0000 L CNN
F 2 "" H 10850 3225 50  0000 L CIN
F 3 "" H 10650 3300 50  0000 L CNN
	1    10650 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 58590597
P 10300 3800
F 0 "#PWR7" H 10300 3550 50  0001 C CNN
F 1 "GND" H 10300 3650 50  0000 C CNN
F 2 "" H 10300 3800 50  0000 C CNN
F 3 "" H 10300 3800 50  0000 C CNN
	1    10300 3800
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5859252D
P 9250 2600
F 0 "R1" V 9330 2600 50  0000 C CNN
F 1 "1K" V 9250 2600 50  0000 C CNN
F 2 "" V 9180 2600 50  0000 C CNN
F 3 "" H 9250 2600 50  0000 C CNN
	1    9250 2600
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 58592685
P 9250 2950
F 0 "R2" V 9330 2950 50  0000 C CNN
F 1 "1K" V 9250 2950 50  0000 C CNN
F 2 "" V 9180 2950 50  0000 C CNN
F 3 "" H 9250 2950 50  0000 C CNN
	1    9250 2950
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 585926C6
P 9250 3300
F 0 "R3" V 9330 3300 50  0000 C CNN
F 1 "1K" V 9250 3300 50  0000 C CNN
F 2 "" V 9180 3300 50  0000 C CNN
F 3 "" H 9250 3300 50  0000 C CNN
	1    9250 3300
	0    1    1    0   
$EndComp
Text Notes 7450 1750 0    60   ~ 0
12V 2A Power Supply\n
$Comp
L R_PHOTO R6
U 1 1 5859E697
P 7100 3300
F 0 "R6" H 7150 3350 50  0000 L CNN
F 1 "GL5539" H 7150 3300 50  0000 L TNN
F 2 "" V 7150 3050 50  0000 L CNN
F 3 "" H 7100 3250 50  0000 C CNN
	1    7100 3300
	1    0    0    -1  
$EndComp
Connection ~ 7500 2750
Wire Wire Line
	7300 2750 8300 2750
Connection ~ 7900 2750
Wire Wire Line
	4850 2900 4550 2900
Wire Wire Line
	4550 4250 8850 4250
Wire Wire Line
	4550 2900 4550 4250
Wire Wire Line
	4650 4150 8750 4150
Wire Wire Line
	4650 3100 4650 4150
Wire Wire Line
	4850 3100 4650 3100
Wire Wire Line
	4750 4050 8650 4050
Wire Wire Line
	4750 3200 4750 4050
Wire Wire Line
	4850 3200 4750 3200
Wire Notes Line
	1350 5000 600  5000
Wire Notes Line
	1350 6800 1350 5000
Wire Notes Line
	600  6800 1350 6800
Wire Wire Line
	6900 3200 6450 3200
Wire Wire Line
	6900 6500 6900 3200
Wire Wire Line
	6800 3300 6450 3300
Wire Wire Line
	6800 5900 6800 3300
Wire Wire Line
	6700 3400 6450 3400
Wire Wire Line
	6700 5300 6700 3400
Wire Wire Line
	6600 3500 6450 3500
Wire Wire Line
	6600 3500 6600 4500
Wire Wire Line
	9400 2600 9550 2600
Wire Wire Line
	8650 2600 9100 2600
Wire Wire Line
	8750 2950 9100 2950
Wire Wire Line
	9400 2950 10000 2950
Wire Wire Line
	9400 3300 10450 3300
Wire Wire Line
	8850 3300 9100 3300
Wire Wire Line
	7300 2400 7300 2150
Wire Wire Line
	7300 2500 7300 2750
Connection ~ 10300 3650
Wire Wire Line
	10300 3150 10300 3800
Wire Wire Line
	9850 3650 9850 2800
Wire Wire Line
	9850 3650 10750 3650
Wire Wire Line
	10750 3650 10750 3500
Wire Wire Line
	8650 4050 8650 2600
Wire Wire Line
	8750 4150 8750 2950
Wire Wire Line
	8850 4250 8850 3300
Wire Wire Line
	10750 2050 10750 3100
Wire Wire Line
	10300 2150 10300 2750
Wire Wire Line
	9850 2250 9850 2400
Wire Wire Line
	8300 2750 8300 2600
Connection ~ 8300 2150
Wire Wire Line
	8300 2150 8300 2300
Connection ~ 7500 2150
Wire Notes Line
	600  5000 600  6800
Connection ~ 1150 5400
Wire Wire Line
	1050 4600 1150 4600
Connection ~ 1150 6000
Wire Wire Line
	1050 5400 1150 5400
Connection ~ 1150 6600
Wire Wire Line
	1150 6000 1050 6000
Wire Wire Line
	1150 4600 1150 7000
Wire Wire Line
	1150 6600 1050 6600
Connection ~ 1250 5800
Wire Wire Line
	1250 6400 1050 6400
Connection ~ 1250 5200
Wire Wire Line
	1250 5800 1050 5800
Connection ~ 1250 4400
Wire Wire Line
	1250 5200 1050 5200
Wire Wire Line
	1250 4150 1250 6400
Wire Wire Line
	1050 4400 1250 4400
Wire Wire Line
	1050 6500 6900 6500
Wire Wire Line
	1050 5900 6800 5900
Wire Wire Line
	1050 5300 6700 5300
Wire Wire Line
	6600 4500 1050 4500
Wire Wire Line
	7900 2750 7900 2900
Wire Wire Line
	7500 2600 7500 2750
Wire Wire Line
	7300 2150 8500 2150
Wire Wire Line
	7500 2150 7500 2300
Wire Wire Line
	4300 2700 4300 3100
Wire Wire Line
	4850 2700 4300 2700
$Comp
L GND #PWR4
U 1 1 585A037D
P 7100 3500
F 0 "#PWR4" H 7100 3250 50  0001 C CNN
F 1 "GND" H 7100 3350 50  0000 C CNN
F 2 "" H 7100 3500 50  0000 C CNN
F 3 "" H 7100 3500 50  0000 C CNN
	1    7100 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3500 7100 3450
Wire Wire Line
	7100 3050 7100 3150
Wire Wire Line
	6450 2700 7100 2700
Connection ~ 7100 3100
$Comp
L R R5
U 1 1 585A2551
P 7100 2900
F 0 "R5" V 7180 2900 50  0000 C CNN
F 1 "100K" V 7100 2900 50  0000 C CNN
F 2 "" V 7030 2900 50  0000 C CNN
F 3 "" H 7100 2900 50  0000 C CNN
	1    7100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2700 7100 2750
Wire Wire Line
	6450 3100 7100 3100
Text Notes 7200 3200 0    60   ~ 0
3.3V LIGHT\n1.1V DARK
Wire Wire Line
	7300 2400 6450 2400
Wire Wire Line
	6450 2500 7300 2500
Wire Wire Line
	7900 2150 7900 1950
Connection ~ 7900 2150
$Comp
L R R4
U 1 1 5859D3BF
P 9650 2250
F 0 "R4" V 9730 2250 50  0000 C CNN
F 1 "400" V 9650 2250 50  0000 C CNN
F 2 "" V 9580 2250 50  0000 C CNN
F 3 "" H 9650 2250 50  0000 C CNN
	1    9650 2250
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5859D445
P 10100 2150
F 0 "R7" V 10180 2150 50  0000 C CNN
F 1 "400" V 10100 2150 50  0000 C CNN
F 2 "" V 10030 2150 50  0000 C CNN
F 3 "" H 10100 2150 50  0000 C CNN
	1    10100 2150
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5859D577
P 10550 2050
F 0 "R8" V 10630 2050 50  0000 C CNN
F 1 "400" V 10550 2050 50  0000 C CNN
F 2 "" V 10480 2050 50  0000 C CNN
F 3 "" H 10550 2050 50  0000 C CNN
	1    10550 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	10750 2050 10700 2050
Wire Wire Line
	10400 2050 9400 2050
Wire Wire Line
	9400 2150 9950 2150
Wire Wire Line
	10250 2150 10300 2150
Wire Wire Line
	9400 2250 9500 2250
Wire Wire Line
	9800 2250 9850 2250
Text Notes 8650 1850 0    60   ~ 0
12V, 6 OHM
$EndSCHEMATC
