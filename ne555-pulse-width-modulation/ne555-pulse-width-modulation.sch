EESchema Schematic File Version 4
EELAYER 30 0
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
L ne555-pulse-width-modulation-rescue:NE555P-Timer U?
U 1 1 6150C82D
P 6550 2200
F 0 "U?" H 6550 2782 50  0000 C CNN
F 1 "NE555P" H 6550 2690 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7200 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 7400 1800 50  0001 C CNN
	1    6550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1500 5650 1500
Wire Wire Line
	5650 1500 5650 2000
Wire Wire Line
	5650 2000 6050 2000
Wire Wire Line
	6050 2200 5650 2200
Wire Wire Line
	5650 2200 5650 2750
Wire Wire Line
	5650 2750 5050 2750
Wire Wire Line
	6050 2400 5850 2400
Wire Wire Line
	5850 1500 6550 1500
Wire Wire Line
	6550 1500 6550 1200
Wire Wire Line
	5850 1500 5850 2400
Wire Wire Line
	6550 1500 6550 1800
Connection ~ 6550 1500
$Comp
L power:GND #PWR?
U 1 1 6150DC3F
P 6550 2600
F 0 "#PWR?" H 6550 2350 50  0001 C CNN
F 1 "GND" H 6554 2426 50  0000 C CNN
F 2 "" H 6550 2600 50  0001 C CNN
F 3 "" H 6550 2600 50  0001 C CNN
	1    6550 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL
U 1 1 6150E190
P 7200 1550
F 0 "RL" H 7270 1596 50  0000 L CNN
F 1 "R" H 7270 1504 50  0000 L CNN
F 2 "" V 7130 1550 50  0001 C CNN
F 3 "~" H 7200 1550 50  0001 C CNN
	1    7200 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R RA
U 1 1 6150E4C1
P 7450 1550
F 0 "RA" H 7520 1596 50  0000 L CNN
F 1 "R" H 7520 1504 50  0000 L CNN
F 2 "" V 7380 1550 50  0001 C CNN
F 3 "~" H 7450 1550 50  0001 C CNN
	1    7450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1200 7200 1200
Wire Wire Line
	7450 1200 7450 1400
Connection ~ 6550 1200
Wire Wire Line
	7200 1400 7200 1200
Connection ~ 7200 1200
Wire Wire Line
	7200 1200 7450 1200
Wire Wire Line
	7050 2000 7200 2000
Wire Wire Line
	7200 2000 7200 1700
Wire Wire Line
	7200 2000 8450 2000
Wire Wire Line
	8450 2000 8450 1950
Connection ~ 7200 2000
Wire Wire Line
	7450 1700 7450 2200
Wire Wire Line
	7450 2400 7050 2400
Wire Wire Line
	7050 2200 7450 2200
Connection ~ 7450 2200
Wire Wire Line
	7450 2200 7450 2400
$Comp
L Device:CP1 C?
U 1 1 6150F37C
P 7450 2550
F 0 "C?" H 7565 2596 50  0000 L CNN
F 1 "CP1" H 7565 2504 50  0000 L CNN
F 2 "" H 7450 2550 50  0001 C CNN
F 3 "~" H 7450 2550 50  0001 C CNN
	1    7450 2550
	1    0    0    -1  
$EndComp
Connection ~ 7450 2400
$Comp
L power:GND #PWR?
U 1 1 6150F963
P 7450 2700
F 0 "#PWR?" H 7450 2450 50  0001 C CNN
F 1 "GND" H 7454 2526 50  0000 C CNN
F 2 "" H 7450 2700 50  0001 C CNN
F 3 "" H 7450 2700 50  0001 C CNN
	1    7450 2700
	1    0    0    -1  
$EndComp
Text Label 8150 1950 0    50   ~ 0
Sortie
Text Label 5000 1450 0    50   ~ 0
Horloge(Clock)
Text Label 5050 2700 0    50   ~ 0
Entrée(Input)
$Comp
L power:VCC #PWR?
U 1 1 61510386
P 6550 900
F 0 "#PWR?" H 6550 750 50  0001 C CNN
F 1 "VCC" H 6564 1075 50  0000 C CNN
F 2 "" H 6550 900 50  0001 C CNN
F 3 "" H 6550 900 50  0001 C CNN
	1    6550 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 900  6550 1200
Text HLabel 7300 2850 0    75   Input ~ 0
ne555-pulse-width-modulation
$EndSCHEMATC
