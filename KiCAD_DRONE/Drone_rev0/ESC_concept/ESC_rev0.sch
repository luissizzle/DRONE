EESchema Schematic File Version 4
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
L Transistor_FET:IRF540N Q?
U 1 1 5CD1CF64
P 4550 3700
F 0 "Q?" H 4755 3746 50  0000 L CNN
F 1 "IRF540N" H 4755 3655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4800 3625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 4550 3700 50  0001 L CNN
	1    4550 3700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 5CD1CF99
P 5950 3700
F 0 "Q?" H 6155 3746 50  0000 L CNN
F 1 "IRF540N" H 6155 3655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6200 3625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 5950 3700 50  0001 L CNN
	1    5950 3700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 5CD1CFD1
P 7150 3700
F 0 "Q?" H 7355 3746 50  0000 L CNN
F 1 "IRF540N" H 7355 3655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7400 3625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 7150 3700 50  0001 L CNN
	1    7150 3700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF9540N Q?
U 1 1 5CD1D054
P 4550 3100
F 0 "Q?" H 4755 3054 50  0000 L CNN
F 1 "IRF9540N" H 4755 3145 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4750 3025 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf9540n.pdf" H 4550 3100 50  0001 L CNN
	1    4550 3100
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF9540N Q?
U 1 1 5CD1D0B0
P 5950 3050
F 0 "Q?" H 6155 3004 50  0000 L CNN
F 1 "IRF9540N" H 6155 3095 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6150 2975 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf9540n.pdf" H 5950 3050 50  0001 L CNN
	1    5950 3050
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF9540N Q?
U 1 1 5CD1D0D0
P 7150 3050
F 0 "Q?" H 7355 3004 50  0000 L CNN
F 1 "IRF9540N" H 7355 3095 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7350 2975 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf9540n.pdf" H 7150 3050 50  0001 L CNN
	1    7150 3050
	1    0    0    1   
$EndComp
$Comp
L MCU_Module:Arduino_UNO_R2 A?
U 1 1 5CD1D27A
P 2500 3350
F 0 "A?" H 2500 4528 50  0000 C CNN
F 1 "Arduino_UNO_R2" H 2500 4437 50  0000 C CNN
F 2 "Module:Arduino_UNO_R2" H 2650 2300 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 2300 4400 50  0001 C CNN
	1    2500 3350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CD1D40A
P 4650 4200
F 0 "#PWR?" H 4650 3950 50  0001 C CNN
F 1 "GND" H 4655 4027 50  0000 C CNN
F 2 "" H 4650 4200 50  0001 C CNN
F 3 "" H 4650 4200 50  0001 C CNN
	1    4650 4200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5CD1D44F
P 4650 2450
F 0 "#PWR?" H 4650 2300 50  0001 C CNN
F 1 "VCC" H 4667 2623 50  0000 C CNN
F 2 "" H 4650 2450 50  0001 C CNN
F 3 "" H 4650 2450 50  0001 C CNN
	1    4650 2450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5CD1D68A
P 6050 2450
F 0 "#PWR?" H 6050 2300 50  0001 C CNN
F 1 "VCC" H 6067 2623 50  0000 C CNN
F 2 "" H 6050 2450 50  0001 C CNN
F 3 "" H 6050 2450 50  0001 C CNN
	1    6050 2450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5CD1D6A3
P 7250 2450
F 0 "#PWR?" H 7250 2300 50  0001 C CNN
F 1 "VCC" H 7267 2623 50  0000 C CNN
F 2 "" H 7250 2450 50  0001 C CNN
F 3 "" H 7250 2450 50  0001 C CNN
	1    7250 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CD1D6D5
P 7250 4200
F 0 "#PWR?" H 7250 3950 50  0001 C CNN
F 1 "GND" H 7255 4027 50  0000 C CNN
F 2 "" H 7250 4200 50  0001 C CNN
F 3 "" H 7250 4200 50  0001 C CNN
	1    7250 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CD1D6EE
P 6050 4200
F 0 "#PWR?" H 6050 3950 50  0001 C CNN
F 1 "GND" H 6055 4027 50  0000 C CNN
F 2 "" H 6050 4200 50  0001 C CNN
F 3 "" H 6050 4200 50  0001 C CNN
	1    6050 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD1D75A
P 4350 2750
F 0 "R?" H 4420 2796 50  0000 L CNN
F 1 "10k" H 4420 2705 50  0000 L CNN
F 2 "" V 4280 2750 50  0001 C CNN
F 3 "~" H 4350 2750 50  0001 C CNN
	1    4350 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD1D78C
P 5750 2750
F 0 "R?" H 5820 2796 50  0000 L CNN
F 1 "10k" H 5820 2705 50  0000 L CNN
F 2 "" V 5680 2750 50  0001 C CNN
F 3 "~" H 5750 2750 50  0001 C CNN
	1    5750 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD1D7C2
P 6950 2750
F 0 "R?" H 7020 2796 50  0000 L CNN
F 1 "10k" H 7020 2705 50  0000 L CNN
F 2 "" V 6880 2750 50  0001 C CNN
F 3 "~" H 6950 2750 50  0001 C CNN
	1    6950 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD1D826
P 4350 4050
F 0 "R?" H 4420 4096 50  0000 L CNN
F 1 "10k" H 4420 4005 50  0000 L CNN
F 2 "" V 4280 4050 50  0001 C CNN
F 3 "~" H 4350 4050 50  0001 C CNN
	1    4350 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD1D864
P 5750 4050
F 0 "R?" H 5820 4096 50  0000 L CNN
F 1 "10k" H 5820 4005 50  0000 L CNN
F 2 "" V 5680 4050 50  0001 C CNN
F 3 "~" H 5750 4050 50  0001 C CNN
	1    5750 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD1D8A4
P 6950 4050
F 0 "R?" H 7020 4096 50  0000 L CNN
F 1 "10k" H 7020 4005 50  0000 L CNN
F 2 "" V 6880 4050 50  0001 C CNN
F 3 "~" H 6950 4050 50  0001 C CNN
	1    6950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2900 4650 2500
Wire Wire Line
	4350 2600 4350 2500
Wire Wire Line
	4350 2500 4650 2500
Connection ~ 4650 2500
Wire Wire Line
	4650 2500 4650 2450
Wire Wire Line
	5750 2600 5750 2450
Wire Wire Line
	5750 2450 6050 2450
Wire Wire Line
	6050 2450 6050 2850
Connection ~ 6050 2450
Wire Wire Line
	6950 2600 6950 2450
Wire Wire Line
	6950 2450 7250 2450
Wire Wire Line
	7250 2850 7250 2450
Connection ~ 7250 2450
Wire Wire Line
	4650 3300 4650 3500
Wire Wire Line
	6050 3500 6050 3400
Wire Wire Line
	7250 3500 7250 3250
Wire Wire Line
	7250 3900 7250 4200
Wire Wire Line
	6950 3700 6950 3900
Wire Wire Line
	6950 4200 7250 4200
Connection ~ 7250 4200
Wire Wire Line
	5750 3700 5750 3900
Wire Wire Line
	5750 4200 6050 4200
Wire Wire Line
	6050 4200 6050 3900
Connection ~ 6050 4200
Wire Wire Line
	4650 4200 4650 3900
Wire Wire Line
	4350 4200 4650 4200
Connection ~ 4650 4200
Text GLabel 4200 3700 0    50   Input ~ 0
AL
Text GLabel 4200 3100 0    50   Input ~ 0
AH
Text GLabel 5500 3050 0    50   Input ~ 0
BH
Text GLabel 5500 3700 0    50   Input ~ 0
BL
Text GLabel 6750 3050 0    50   Input ~ 0
CH
Text GLabel 6750 3700 0    50   Input ~ 0
CL
Wire Wire Line
	4200 3100 4350 3100
Wire Wire Line
	4200 3700 4350 3700
Wire Wire Line
	5500 3050 5750 3050
Wire Wire Line
	5500 3700 5750 3700
Wire Wire Line
	6750 3050 6950 3050
Wire Wire Line
	6750 3700 6950 3700
Text GLabel 3100 3050 2    50   Input ~ 0
AH
Text GLabel 3100 3250 2    50   Input ~ 0
AH
Text GLabel 3100 3350 2    50   Input ~ 0
AH
Text GLabel 3100 3950 2    50   Input ~ 0
AH
Text GLabel 3100 3850 2    50   Input ~ 0
AH
Text GLabel 3100 3750 2    50   Input ~ 0
AH
Wire Wire Line
	3100 3050 3000 3050
Wire Wire Line
	3100 3250 3000 3250
Wire Wire Line
	3100 3350 3000 3350
Wire Wire Line
	3100 3750 3000 3750
Wire Wire Line
	3100 3850 3000 3850
Wire Wire Line
	3100 3950 3000 3950
$Comp
L power:GND #PWR?
U 1 1 5CD2411D
P 2500 4550
F 0 "#PWR?" H 2500 4300 50  0001 C CNN
F 1 "GND" H 2505 4377 50  0000 C CNN
F 2 "" H 2500 4550 50  0001 C CNN
F 3 "" H 2500 4550 50  0001 C CNN
	1    2500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4450 2500 4450
Connection ~ 2500 4450
Wire Wire Line
	2500 4450 2600 4450
Wire Wire Line
	2500 4550 2500 4450
$Comp
L My_Schematics:BLDC U?
U 1 1 5CD2600A
P 9050 3450
F 0 "U?" H 9369 3496 50  0000 L CNN
F 1 "BLDC" H 9369 3405 50  0000 L CNN
F 2 "" H 8700 3650 50  0001 C CNN
F 3 "" H 8700 3650 50  0001 C CNN
	1    9050 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3300 8200 3300
Wire Wire Line
	8200 3400 6050 3400
Connection ~ 6050 3400
Wire Wire Line
	6050 3400 6050 3250
Wire Wire Line
	8200 3500 7250 3500
Wire Wire Line
	4350 3700 4350 3900
Connection ~ 4350 3700
Connection ~ 5750 3700
Connection ~ 6950 3700
Connection ~ 7250 3500
Connection ~ 4350 3100
Connection ~ 4650 3300
Wire Wire Line
	4350 2900 4350 3100
Connection ~ 5750 3050
Wire Wire Line
	5750 2900 5750 3050
Connection ~ 6950 3050
Wire Wire Line
	6950 2900 6950 3050
$EndSCHEMATC
