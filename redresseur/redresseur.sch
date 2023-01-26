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
L Simulation_SPICE:VSIN V1
U 1 1 616F51C9
P 2600 1750
F 0 "V1" H 2730 1841 50  0000 L CNN
F 1 "VSIN" H 2730 1750 50  0000 L CNN
F 2 "" H 2600 1750 50  0001 C CNN
F 3 "~" H 2600 1750 50  0001 C CNN
F 4 "Y" H 2600 1750 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2600 1750 50  0001 L CNN "Spice_Primitive"
F 6 "sin(0 5 1k)" H 2730 1659 50  0000 L CNN "Spice_Model"
	1    2600 1750
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D1
U 1 1 616F5E1F
P 3400 1500
F 0 "D1" H 3400 1765 50  0000 C CNN
F 1 "DIODE" H 3400 1674 50  0000 C CNN
F 2 "" H 3400 1500 50  0001 C CNN
F 3 "~" H 3400 1500 50  0001 C CNN
F 4 "D" H 3400 1500 50  0001 C CNN "Spice_Primitive"
F 5 "D1N914" H 3400 1500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3400 1500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/elvis/Téléchargements/1N914.lib" H 3400 1500 50  0001 C CNN "Spice_Lib_File"
F 8 "2 1" H 3400 1500 50  0001 C CNN "Spice_Node_Sequence"
	1    3400 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 616F6617
P 4150 1700
F 0 "R1" H 4218 1746 50  0000 L CNN
F 1 "220" H 4218 1655 50  0000 L CNN
F 2 "" V 4190 1690 50  0001 C CNN
F 3 "~" H 4150 1700 50  0001 C CNN
	1    4150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1550 2600 1500
Wire Wire Line
	2600 1500 3200 1500
Wire Wire Line
	3600 1500 4150 1500
Wire Wire Line
	4150 1500 4150 1550
Wire Wire Line
	2600 2000 4150 2000
Wire Wire Line
	4150 2000 4150 1850
Wire Wire Line
	2600 2000 2600 1950
Text Notes 4200 1300 0    50   ~ 0
.tran 100u 10m 0
Text GLabel 4450 2000 2    50   Input ~ 0
out
Wire Wire Line
	4450 2000 4150 2000
Text GLabel 2050 1500 0    50   Input ~ 0
in
Wire Wire Line
	2600 1500 2050 1500
Connection ~ 2600 1500
Connection ~ 4150 2000
$EndSCHEMATC
