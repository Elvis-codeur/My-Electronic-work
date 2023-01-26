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
L pspice:INDUCTOR L1
U 1 1 61BA99BA
P 5200 1150
F 0 "L1" H 5200 1365 50  0000 C CNN
F 1 "1.3m" H 5200 1274 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L9.5mm_D4.0mm_P15.24mm_Horizontal_Fastron_SMCC" H 5200 1150 50  0001 C CNN
F 3 "~" H 5200 1150 50  0001 C CNN
	1    5200 1150
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D1
U 1 1 61BA9D58
P 4600 1700
F 0 "D1" V 4646 1572 50  0000 R CNN
F 1 "DIODE" V 4555 1572 50  0000 R CNN
F 2 "Diode_THT:D_5W_P12.70mm_Horizontal" H 4600 1700 50  0001 C CNN
F 3 "~" H 4600 1700 50  0001 C CNN
F 4 "D" H 4600 1700 50  0001 C CNN "Spice_Primitive"
F 5 "5EQ100" H 4600 1700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4600 1700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "5EQ100.lib" H 4600 1700 50  0001 C CNN "Spice_Lib_File"
	1    4600 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 61BA9FE3
P 6000 1700
F 0 "C1" H 6115 1746 50  0000 L CNN
F 1 "17n" H 6115 1655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 6038 1550 50  0001 C CNN
F 3 "~" H 6000 1700 50  0001 C CNN
	1    6000 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 61BAA553
P 6550 1300
F 0 "R1" H 6618 1346 50  0000 L CNN
F 1 "1k" H 6618 1255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 6590 1290 50  0001 C CNN
F 3 "~" H 6550 1300 50  0001 C CNN
	1    6550 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 61BAAA26
P 6550 2100
F 0 "R2" H 6618 2146 50  0000 L CNN
F 1 "714" H 6618 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 6590 2090 50  0001 C CNN
F 3 "~" H 6550 2100 50  0001 C CNN
	1    6550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1150 6000 1150
Connection ~ 6550 1150
Wire Wire Line
	6550 1450 6550 1700
Wire Wire Line
	6000 1550 6000 1150
Connection ~ 6000 1150
Wire Wire Line
	6000 1150 6550 1150
Wire Wire Line
	6000 1850 6000 2450
Connection ~ 6000 2450
Wire Wire Line
	6000 2450 4600 2450
Wire Wire Line
	6550 2250 6550 2450
Wire Wire Line
	6550 2450 6000 2450
Wire Wire Line
	4600 1500 4600 1150
Connection ~ 4600 1150
Wire Wire Line
	4600 1150 4950 1150
Wire Wire Line
	4600 1900 4600 2450
Connection ~ 4600 2450
Text Notes 5700 750  0    50   ~ 0
.tran 10u  1m
$Comp
L Transistor_FET:IRF740 Q1
U 1 1 617F4C2D
P 3550 1250
F 0 "Q1" V 3892 1250 50  0000 C CNN
F 1 "IRF740" V 3801 1250 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3800 1175 50  0001 L CIN
F 3 "http://www.vishay.com/docs/91054/91054.pdf" H 3550 1250 50  0001 L CNN
F 4 "X" H 3550 1250 50  0001 C CNN "Spice_Primitive"
F 5 "IRC740" H 3550 1250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3550 1250 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "IRC740.lib" H 3550 1250 50  0001 C CNN "Spice_Lib_File"
F 8 " 2 1 3" H 3550 1250 50  0001 C CNN "Spice_Node_Sequence"
	1    3550 1250
	0    -1   -1   0   
$EndComp
Text GLabel 6700 1700 2    50   Input ~ 0
feedback
Wire Wire Line
	6550 1700 6700 1700
Connection ~ 6550 1700
Wire Wire Line
	6550 1700 6550 1950
$Comp
L Amplifier_Audio:LM386 U1
U 1 1 61811D37
P 2700 4850
F 0 "U1" H 3044 4896 50  0000 L CNN
F 1 "LM386" H 3044 4805 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 2800 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm386.pdf" H 2900 5050 50  0001 C CNN
F 4 "X" H 2700 4850 50  0001 C CNN "Spice_Primitive"
F 5 "LM358/NS" H 2700 4850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2700 4850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "Lm358.mod" H 2700 4850 50  0001 C CNN "Spice_Lib_File"
F 8 "3 2 7 4 5" H 2700 4850 50  0001 C CNN "Spice_Node_Sequence"
	1    2700 4850
	1    0    0    -1  
$EndComp
Text GLabel 1800 4950 0    50   Input ~ 0
feedback
Wire Wire Line
	3000 4850 3100 4850
Text GLabel 3600 4850 2    50   Input ~ 0
vcon
Wire Wire Line
	3100 4350 3100 4850
Wire Wire Line
	2300 4350 2300 4750
Wire Wire Line
	2300 4750 2400 4750
$Comp
L pspice:VSOURCE V1
U 1 1 61860994
P 1600 1750
F 0 "V1" H 1828 1796 50  0000 L CNN
F 1 "12" H 1828 1705 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1600 1750 50  0001 C CNN
F 3 "~" H 1600 1750 50  0001 C CNN
	1    1600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2050 1600 2450
Wire Wire Line
	1600 1150 1600 1450
Text GLabel 7800 1150 2    50   Input ~ 0
vs
Wire Wire Line
	2600 4250 2600 4550
Wire Wire Line
	1800 4950 2400 4950
Wire Wire Line
	1600 1150 1650 1150
Wire Wire Line
	1600 2450 2050 2450
Text GLabel 1600 4750 0    50   Input ~ 0
ref
Wire Wire Line
	1600 4750 1850 4750
Connection ~ 2300 4750
Wire Wire Line
	2300 4350 2700 4350
Wire Wire Line
	3100 4850 3200 4850
Connection ~ 3100 4850
$Comp
L Device:R_US R3
U 1 1 618AA01E
P 2000 4750
F 0 "R3" V 1795 4750 50  0000 C CNN
F 1 "1.985k" V 1886 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2040 4740 50  0001 C CNN
F 3 "~" H 2000 4750 50  0001 C CNN
	1    2000 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 618AA3D8
P 2850 4350
F 0 "R4" V 2645 4350 50  0000 C CNN
F 1 "19.1k" V 2736 4350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2890 4340 50  0001 C CNN
F 3 "~" H 2850 4350 50  0001 C CNN
	1    2850 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 4350 3100 4350
Wire Wire Line
	2150 4750 2300 4750
$Comp
L Device:R_US R5
U 1 1 618C8E30
P 2050 1450
F 0 "R5" H 2118 1496 50  0000 L CNN
F 1 "6.625k" H 2118 1405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2090 1440 50  0001 C CNN
F 3 "~" H 2050 1450 50  0001 C CNN
	1    2050 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 618C9171
P 2050 2000
F 0 "R6" H 2118 2046 50  0000 L CNN
F 1 "53k" H 2118 1955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2090 1990 50  0001 C CNN
F 3 "~" H 2050 2000 50  0001 C CNN
	1    2050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1150 2050 1300
Connection ~ 2050 1150
Wire Wire Line
	2050 2150 2050 2450
Text GLabel 2450 1700 2    50   Input ~ 0
ref
$Comp
L power:VCC #PWR01
U 1 1 618CD1ED
P 1650 1150
F 0 "#PWR01" H 1650 1000 50  0001 C CNN
F 1 "VCC" H 1665 1323 50  0000 C CNN
F 2 "" H 1650 1150 50  0001 C CNN
F 3 "" H 1650 1150 50  0001 C CNN
	1    1650 1150
	1    0    0    -1  
$EndComp
Connection ~ 1650 1150
Wire Wire Line
	1650 1150 2050 1150
$Comp
L power:GND #PWR03
U 1 1 618D875F
P 2600 5150
F 0 "#PWR03" H 2600 4900 50  0001 C CNN
F 1 "GND" H 2605 4977 50  0000 C CNN
F 2 "" H 2600 5150 50  0001 C CNN
F 3 "" H 2600 5150 50  0001 C CNN
	1    2600 5150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 618DB556
P 2600 4250
F 0 "#PWR02" H 2600 4100 50  0001 C CNN
F 1 "VCC" H 2615 4423 50  0000 C CNN
F 2 "" H 2600 4250 50  0001 C CNN
F 3 "" H 2600 4250 50  0001 C CNN
	1    2600 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 618F635A
P 3350 4850
F 0 "R7" V 3555 4850 50  0000 C CNN
F 1 "1k" V 3464 4850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3390 4840 50  0001 C CNN
F 3 "~" H 3350 4850 50  0001 C CNN
	1    3350 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 4850 3600 4850
Connection ~ 6550 2450
Text GLabel 3950 1450 3    50   Input ~ 0
vcon
$Comp
L Device:R_US R10
U 1 1 61908EF4
P 3950 1300
F 0 "R10" H 4018 1346 50  0000 L CNN
F 1 "200k" H 4018 1255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3990 1290 50  0001 C CNN
F 3 "~" H 3950 1300 50  0001 C CNN
	1    3950 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1450 3550 1550
Text GLabel 3550 1550 3    50   Input ~ 0
vcon
$Comp
L power:GND #PWR04
U 1 1 6192812A
P 6000 2450
F 0 "#PWR04" H 6000 2200 50  0001 C CNN
F 1 "GND" H 6005 2277 50  0000 C CNN
F 2 "" H 6000 2450 50  0001 C CNN
F 3 "" H 6000 2450 50  0001 C CNN
	1    6000 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1150 3950 1150
Wire Wire Line
	3950 1150 4600 1150
Text GLabel 2800 1450 3    50   Input ~ 0
vcon
$Comp
L Device:R_US R9
U 1 1 6192F06A
P 2800 1300
F 0 "R9" H 2868 1346 50  0000 L CNN
F 1 "51.5k" H 2868 1255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2840 1290 50  0001 C CNN
F 3 "~" H 2800 1300 50  0001 C CNN
	1    2800 1300
	1    0    0    -1  
$EndComp
Connection ~ 3950 1150
Wire Wire Line
	2050 1600 2050 1700
Wire Wire Line
	2050 1150 2800 1150
Wire Wire Line
	2800 1150 3350 1150
Connection ~ 2800 1150
Wire Wire Line
	2050 2450 4600 2450
Connection ~ 2050 2450
Wire Wire Line
	2450 1700 2050 1700
Connection ~ 2050 1700
Wire Wire Line
	2050 1700 2050 1850
Wire Wire Line
	6550 2450 7450 2450
Wire Wire Line
	7450 1800 7450 2450
Wire Wire Line
	7600 1800 7450 1800
Wire Wire Line
	7450 1700 7600 1700
Wire Wire Line
	7450 1150 7800 1150
Wire Wire Line
	6550 1150 7450 1150
Connection ~ 7450 1150
Wire Wire Line
	7450 1150 7450 1700
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 619A1556
P 7800 1700
F 0 "J1" H 7880 1692 50  0000 L CNN
F 1 "sortie" H 7880 1601 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 7800 1700 50  0001 C CNN
F 3 "~" H 7800 1700 50  0001 C CNN
	1    7800 1700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
