EESchema Schematic File Version 4
LIBS:DRONE_GateDriver-cache
EELAYER 26 0
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
L Device:R R1
U 1 1 5CE5A460
P 4650 2700
F 0 "R1" V 4443 2700 50  0000 C CNN
F 1 "R" V 4534 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4580 2700 50  0001 C CNN
F 3 "~" H 4650 2700 50  0001 C CNN
	1    4650 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5CE5A587
P 4800 2850
F 0 "C1" H 4915 2896 50  0000 L CNN
F 1 "C" H 4915 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4838 2700 50  0001 C CNN
F 3 "~" H 4800 2850 50  0001 C CNN
	1    4800 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5CE5A5C6
P 4800 3000
F 0 "#PWR0101" H 4800 2750 50  0001 C CNN
F 1 "GND" H 4805 2827 50  0000 C CNN
F 2 "" H 4800 3000 50  0001 C CNN
F 3 "" H 4800 3000 50  0001 C CNN
	1    4800 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5CE5A629
P 5800 2700
F 0 "D1" H 5800 2484 50  0000 C CNN
F 1 "D" H 5800 2575 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5800 2700 50  0001 C CNN
F 3 "~" H 5800 2700 50  0001 C CNN
	1    5800 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 2750 4850 2700
Wire Wire Line
	4850 2700 5000 2700
Wire Wire Line
	4850 2750 4800 2750
Wire Wire Line
	4800 2750 4800 2700
Connection ~ 4800 2700
$Comp
L Device:C C2
U 1 1 5CE5A6E3
P 6300 2700
F 0 "C2" V 6048 2700 50  0000 C CNN
F 1 "C" V 6139 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6338 2550 50  0001 C CNN
F 3 "~" H 6300 2700 50  0001 C CNN
	1    6300 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 3150 5000 3150
Wire Wire Line
	5000 3150 5000 2700
Connection ~ 5000 2700
Wire Wire Line
	5000 2700 5650 2700
Wire Wire Line
	5150 3050 4650 3050
Wire Wire Line
	4650 3050 4650 3950
Wire Wire Line
	5750 3050 6400 3050
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 5CE5EC83
P 4450 3950
F 0 "J2" H 4556 4128 50  0000 C CNN
F 1 "Conn_01x01_Male" H 4556 4037 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 4450 3950 50  0001 C CNN
F 3 "~" H 4450 3950 50  0001 C CNN
	1    4450 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 5CE5EF59
P 6600 3050
F 0 "J3" H 6706 3228 50  0000 C CNN
F 1 "Conn_01x01_Male" H 6706 3137 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 6600 3050 50  0001 C CNN
F 3 "~" H 6600 3050 50  0001 C CNN
	1    6600 3050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5CE5F1D0
P 5150 3650
F 0 "#PWR0102" H 5150 3400 50  0001 C CNN
F 1 "GND" H 5155 3477 50  0000 C CNN
F 2 "" H 5150 3650 50  0001 C CNN
F 3 "" H 5150 3650 50  0001 C CNN
	1    5150 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3150 5950 3150
Wire Wire Line
	5950 3150 5950 2700
Wire Wire Line
	6150 2700 5950 2700
Connection ~ 5950 2700
$Comp
L Device:Q_NMOS_DGS Q1
U 1 1 5CE5F6C3
P 6900 3300
F 0 "Q1" H 7105 3346 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 7105 3255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 7100 3400 50  0001 C CNN
F 3 "~" H 6900 3300 50  0001 C CNN
	1    6900 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_DGS Q2
U 1 1 5CE5F827
P 6900 3800
F 0 "Q2" H 7105 3846 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 7105 3755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 7100 3900 50  0001 C CNN
F 3 "~" H 6900 3800 50  0001 C CNN
	1    6900 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3300 6700 3300
Wire Wire Line
	5750 3250 5750 3300
Wire Wire Line
	6450 3600 7000 3600
Wire Wire Line
	7000 3600 7000 3500
Connection ~ 7000 3600
Wire Wire Line
	5150 3250 5000 3250
Wire Wire Line
	5000 3250 5000 4050
Wire Wire Line
	5000 4050 6500 4050
Wire Wire Line
	6500 4050 6500 3800
Wire Wire Line
	6500 3800 6700 3800
Wire Wire Line
	5750 3650 6450 3650
Wire Wire Line
	6450 2700 6450 3600
Connection ~ 6450 3600
Wire Wire Line
	6450 3600 6450 3650
$Comp
L power:GND #PWR0103
U 1 1 5CE60115
P 7000 4000
F 0 "#PWR0103" H 7000 3750 50  0001 C CNN
F 1 "GND" H 7005 3827 50  0000 C CNN
F 2 "" H 7000 4000 50  0001 C CNN
F 3 "" H 7000 4000 50  0001 C CNN
	1    7000 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5CE603BB
P 7350 3600
F 0 "L1" V 7540 3600 50  0000 C CNN
F 1 "L" V 7449 3600 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 7350 3600 50  0001 C CNN
F 3 "~" H 7350 3600 50  0001 C CNN
	1    7350 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 3600 7200 3600
$Comp
L Device:C C3
U 1 1 5CE606B9
P 7700 3150
F 0 "C3" H 7815 3196 50  0000 L CNN
F 1 "C" H 7815 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7738 3000 50  0001 C CNN
F 3 "~" H 7700 3150 50  0001 C CNN
	1    7700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3100 7000 3000
Wire Wire Line
	7000 3000 7700 3000
$Comp
L Device:C C4
U 1 1 5CE60AAE
P 7700 3750
F 0 "C4" H 7815 3796 50  0000 L CNN
F 1 "C" H 7815 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7738 3600 50  0001 C CNN
F 3 "~" H 7700 3750 50  0001 C CNN
	1    7700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3600 7700 3600
$Comp
L power:GND #PWR0104
U 1 1 5CE6110B
P 7700 3300
F 0 "#PWR0104" H 7700 3050 50  0001 C CNN
F 1 "GND" H 7705 3127 50  0000 C CNN
F 2 "" H 7700 3300 50  0001 C CNN
F 3 "" H 7700 3300 50  0001 C CNN
	1    7700 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5CE613EB
P 7700 3900
F 0 "#PWR0105" H 7700 3650 50  0001 C CNN
F 1 "GND" H 7705 3727 50  0000 C CNN
F 2 "" H 7700 3900 50  0001 C CNN
F 3 "" H 7700 3900 50  0001 C CNN
	1    7700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3000 8250 3000
Connection ~ 7700 3000
Wire Wire Line
	7700 3600 8050 3600
$Comp
L Driver_FET:FAN7842 U1
U 1 1 5CE62430
P 5450 3350
F 0 "U1" H 5450 3917 50  0000 C CNN
F 1 "FAN7842" H 5450 3826 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5450 2850 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/FAN7842-D.pdf" H 5450 3350 50  0001 C CNN
	1    5450 3350
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5CE644A0
P 8450 3100
F 0 "J4" H 8423 2980 50  0000 R CNN
F 1 "Conn_01x02_Male" H 8423 3071 50  0000 R CNN
F 2 "My_Footprints:header_2_pins" H 8450 3100 50  0001 C CNN
F 3 "~" H 8450 3100 50  0001 C CNN
	1    8450 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5CE64526
P 8250 3100
F 0 "#PWR0106" H 8250 2850 50  0001 C CNN
F 1 "GND" H 8255 2927 50  0000 C CNN
F 2 "" H 8250 3100 50  0001 C CNN
F 3 "" H 8250 3100 50  0001 C CNN
	1    8250 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 5CE61D93
P 8450 3600
F 0 "J5" H 8556 3778 50  0000 C CNN
F 1 "Conn_01x01_Male" H 8556 3687 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 8450 3600 50  0001 C CNN
F 3 "~" H 8450 3600 50  0001 C CNN
	1    8450 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5CE651AA
P 8050 3750
F 0 "R2" H 8120 3796 50  0000 L CNN
F 1 "R" H 8120 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7980 3750 50  0001 C CNN
F 3 "~" H 8050 3750 50  0001 C CNN
	1    8050 3750
	1    0    0    -1  
$EndComp
Connection ~ 8050 3600
Wire Wire Line
	8050 3600 8250 3600
$Comp
L power:GND #PWR0107
U 1 1 5CE6521D
P 8050 3900
F 0 "#PWR0107" H 8050 3650 50  0001 C CNN
F 1 "GND" H 8055 3727 50  0000 C CNN
F 2 "" H 8050 3900 50  0001 C CNN
F 3 "" H 8050 3900 50  0001 C CNN
	1    8050 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5CE65AE4
P 4300 2600
F 0 "J1" H 4273 2480 50  0000 R CNN
F 1 "Conn_01x02_Male" H 4273 2571 50  0000 R CNN
F 2 "My_Footprints:header_2_pins" H 4300 2600 50  0001 C CNN
F 3 "~" H 4300 2600 50  0001 C CNN
	1    4300 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CE65AEB
P 4500 2600
F 0 "#PWR0108" H 4500 2350 50  0001 C CNN
F 1 "GND" H 4505 2427 50  0000 C CNN
F 2 "" H 4500 2600 50  0001 C CNN
F 3 "" H 4500 2600 50  0001 C CNN
	1    4500 2600
	-1   0    0    1   
$EndComp
$EndSCHEMATC
