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
L Device:R_US R1
U 1 1 616F2344
P 3250 3050
F 0 "R1" V 3045 3050 50  0000 C CNN
F 1 "1k" V 3136 3050 50  0000 C CNN
F 2 "" V 3290 3040 50  0001 C CNN
F 3 "~" H 3250 3050 50  0001 C CNN
	1    3250 3050
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 616F2EE0
P 3750 3400
F 0 "C1" H 3865 3446 50  0000 L CNN
F 1 "10n" H 3865 3355 50  0000 L CNN
F 2 "" H 3788 3250 50  0001 C CNN
F 3 "~" H 3750 3400 50  0001 C CNN
	1    3750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3050 3750 3050
Wire Wire Line
	3750 3250 3750 3050
$Comp
L power:GND #PWR02
U 1 1 616F3F85
P 3750 4050
F 0 "#PWR02" H 3750 3800 50  0001 C CNN
F 1 "GND" H 3755 3877 50  0000 C CNN
F 2 "" H 3750 4050 50  0001 C CNN
F 3 "" H 3750 4050 50  0001 C CNN
	1    3750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3550 3750 4050
Text GLabel 5100 3050 2    50   Input ~ 0
out
Text Notes 3450 2650 0    50   ~ 0
.ac dec 10 1 2.5k
Text Notes 4200 2900 0    50   ~ 0
*.tran 10u 1m 0 uic
Text Label 2600 3050 0    50   ~ 0
entree
Connection ~ 3750 3050
Wire Wire Line
	3750 3050 5100 3050
Wire Wire Line
	3100 3050 2350 3050
$Comp
L power:GND #PWR03
U 1 1 6171AAE3
P 1050 3100
F 0 "#PWR03" H 1050 2850 50  0001 C CNN
F 1 "GND" H 1055 2927 50  0000 C CNN
F 2 "" H 1050 3100 50  0001 C CNN
F 3 "" H 1050 3100 50  0001 C CNN
	1    1050 3100
	1    0    0    -1  
$EndComp
Text Label 1150 2400 0    50   ~ 0
entree
Wire Wire Line
	1150 2400 1050 2400
Wire Wire Line
	1050 2400 1050 2500
$Comp
L pspice:VSOURCE V1
U 1 1 6226875F
P 1050 2800
F 0 "V1" H 1278 2846 50  0000 L CNN
F 1 "VSOURCE" H 1278 2755 50  0000 L CNN
F 2 "" H 1050 2800 50  0001 C CNN
F 3 "~" H 1050 2800 50  0001 C CNN
F 4 "V" H 1050 2800 50  0001 C CNN "Spice_Primitive"
F 5 "dc 1 ac 1 0" H 1050 2800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1050 2800 50  0001 C CNN "Spice_Netlist_Enabled"
	1    1050 2800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
