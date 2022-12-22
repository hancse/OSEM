EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 10
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
L Amplifier_Operational:LM7332 U?
U 1 1 5FC5AEEC
P 9150 1150
AR Path="/5F8C23F2/5FC5AEEC" Ref="U?"  Part="2" 
AR Path="/5FB9434D/5FC5AEEC" Ref="U1003"  Part="1" 
AR Path="/5FC5AEEC" Ref="U?"  Part="1" 
F 0 "U1003" H 9200 1450 50  0000 C CNN
F 1 "LM7332" H 9200 1350 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9100 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm7332.pdf" H 9200 1350 50  0001 C CNN
	1    9150 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1150 9500 1150
Wire Wire Line
	8850 1250 8800 1250
Wire Wire Line
	8800 1250 8800 1450
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FC5AEF5
P 9150 1450
AR Path="/5F8C23F2/5FC5AEF5" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FC5AEF5" Ref="R1005"  Part="1" 
F 0 "R1005" V 9050 1450 50  0000 C CNN
F 1 "22K" V 9250 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9080 1450 50  0001 C CNN
F 3 "~" H 9150 1450 50  0001 C CNN
	1    9150 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 1450 9500 1450
Wire Wire Line
	9500 1450 9500 1150
Connection ~ 9500 1150
Wire Wire Line
	9500 1150 9850 1150
Wire Wire Line
	9000 1450 8800 1450
Wire Wire Line
	8800 1450 8800 1500
Connection ~ 8800 1450
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FC5AF02
P 8800 1650
AR Path="/5F8C23F2/5FC5AF02" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FC5AF02" Ref="R1004"  Part="1" 
F 0 "R1004" H 8850 1650 50  0000 L CNN
F 1 "10K" H 8900 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8730 1650 50  0001 C CNN
F 3 "~" H 8800 1650 50  0001 C CNN
	1    8800 1650
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FC5AF08
P 8800 1850
AR Path="/5F8C23F2/5FC5AF08" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FC5AF08" Ref="#PWR01022"  Part="1" 
F 0 "#PWR01022" H 8800 1600 50  0001 C CNN
F 1 "GND" H 8805 1677 50  0000 C CNN
F 2 "" H 8800 1850 50  0001 C CNN
F 3 "" H 8800 1850 50  0001 C CNN
	1    8800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1850 8800 1800
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FC5AF0F
P 10200 1150
AR Path="/5F8C23F2/5FC5AF0F" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FC5AF0F" Ref="R1011"  Part="1" 
F 0 "R1011" V 10100 1150 50  0000 C CNN
F 1 "470R" V 10300 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10130 1150 50  0001 C CNN
F 3 "~" H 10200 1150 50  0001 C CNN
	1    10200 1150
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:DZ2S120X0L-Diode D?
U 1 1 5FC5AF15
P 9850 1650
AR Path="/5F8C23F2/5FC5AF15" Ref="D?"  Part="1" 
AR Path="/5FB9434D/5FC5AF15" Ref="D1003"  Part="1" 
F 0 "D1003" V 9804 1730 50  0000 L CNN
F 1 "DZ2S120X0L" V 9895 1730 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-523" H 9850 1475 50  0001 C CNN
F 3 "https://industrial.panasonic.com/content/data/SC/ds/ds4/DZ2S12000L_E.pdf" H 9850 1650 50  0001 C CNN
	1    9850 1650
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FC5AF1B
P 9850 1850
AR Path="/5F8C23F2/5FC5AF1B" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FC5AF1B" Ref="#PWR01024"  Part="1" 
F 0 "#PWR01024" H 9850 1600 50  0001 C CNN
F 1 "GND" H 9855 1677 50  0000 C CNN
F 2 "" H 9850 1850 50  0001 C CNN
F 3 "" H 9850 1850 50  0001 C CNN
	1    9850 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1850 9850 1800
Wire Wire Line
	9850 1500 9850 1150
Wire Wire Line
	10350 1150 10450 1150
Text HLabel 10450 1150 2    50   Output ~ 0
V_OUT
Wire Wire Line
	8850 2600 8800 2600
Wire Wire Line
	8800 2600 8800 2800
Text HLabel 10450 2250 2    50   Output ~ 0
I_OUT
Wire Wire Line
	8600 1050 8600 2400
Connection ~ 8600 1050
Wire Wire Line
	8600 1050 8850 1050
Wire Wire Line
	8600 2400 8850 2400
Text Notes 10850 1200 0    50   ~ 0
1..10V
Text Notes 10850 2300 0    50   ~ 0
1..20mA
$Comp
L Amplifier_Operational:LM7332 U?
U 2 1 5FC61515
P 9150 2500
AR Path="/5F8C23F2/5FC61515" Ref="U?"  Part="2" 
AR Path="/5FB9434D/5FC61515" Ref="U1003"  Part="2" 
AR Path="/5FC61515" Ref="U?"  Part="2" 
F 0 "U1003" H 9200 2800 50  0000 C CNN
F 1 "LM7332" H 9200 2700 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9100 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm7332.pdf" H 9200 2700 50  0001 C CNN
	2    9150 2500
	1    0    0    -1  
$EndComp
Connection ~ 9850 1150
Wire Wire Line
	9850 1150 10050 1150
$Comp
L Amplifier_Operational:LM7332 U?
U 3 1 5FE0F416
P 5950 6750
AR Path="/5F8C23F2/5FE0F416" Ref="U?"  Part="3" 
AR Path="/5FB9434D/5FE0F416" Ref="U1003"  Part="3" 
AR Path="/5FE0F416" Ref="U?"  Part="3" 
F 0 "U1003" H 5908 6796 50  0000 L CNN
F 1 "LM7332" H 5908 6705 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5900 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm7332.pdf" H 6000 6950 50  0001 C CNN
	3    5950 6750
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FE0F41C
P 5850 7150
AR Path="/5F8C23F2/5FE0F41C" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FE0F41C" Ref="#PWR01017"  Part="1" 
F 0 "#PWR01017" H 5850 6900 50  0001 C CNN
F 1 "GND" H 5855 6977 50  0000 C CNN
F 2 "" H 5850 7150 50  0001 C CNN
F 3 "" H 5850 7150 50  0001 C CNN
	1    5850 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 7150 5850 7100
Wire Wire Line
	5850 6350 5850 6400
$Comp
L SIOMv01-rescue:+12V-power #PWR?
U 1 1 5FE0F424
P 5850 6350
AR Path="/5F8C23F2/5FE0F424" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FE0F424" Ref="#PWR01016"  Part="1" 
F 0 "#PWR01016" H 5850 6200 50  0001 C CNN
F 1 "+12V" H 5865 6523 50  0000 C CNN
F 2 "" H 5850 6350 50  0001 C CNN
F 3 "" H 5850 6350 50  0001 C CNN
	1    5850 6350
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FE0F42A
P 6300 6750
AR Path="/5F8C23F2/5FE0F42A" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FE0F42A" Ref="C1007"  Part="1" 
F 0 "C1007" H 6415 6796 50  0000 L CNN
F 1 "100nF 50V" H 6415 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6338 6600 50  0001 C CNN
F 3 "~" H 6300 6750 50  0001 C CNN
	1    6300 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6600 6300 6400
Wire Wire Line
	6300 6400 5850 6400
Connection ~ 5850 6400
Wire Wire Line
	5850 6400 5850 6450
Wire Wire Line
	6300 6900 6300 7100
Wire Wire Line
	6300 7100 5850 7100
Connection ~ 5850 7100
Wire Wire Line
	5850 7100 5850 7050
Text Notes 6400 6950 0    50   ~ 0
Near IC
$Comp
L SIOMv01-rescue:MAX3226-Interface_UART U1002
U 1 1 5FE51138
P 4650 2200
F 0 "U1002" H 4100 3250 50  0000 C CNN
F 1 "MAX3226" H 5100 1150 50  0000 C CNN
F 2 "Package_SO:SSOP-16_5.3x6.2mm_P0.65mm" H 4650 900 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX3224-MAX3245.pdf" H 4650 2300 50  0001 C CNN
	1    4650 2200
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:MAX13432EESD-Interface_UART U1001
U 1 1 5FE95101
P 4350 4650
F 0 "U1001" H 4000 5300 50  0000 C CNN
F 1 "MAX13432EESD" H 4050 4000 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4350 3650 50  0001 C CIN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX13430E-MAX13433E.pdf" H 4350 5450 50  0001 C CNN
	1    4350 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4550 3800 4550
Wire Wire Line
	3800 5050 3850 5050
Wire Wire Line
	4650 3400 4650 3450
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FEB0D13
P 4650 3450
AR Path="/5FEB0D13" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FEB0D13" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FEB0D13" Ref="#PWR01014"  Part="1" 
F 0 "#PWR01014" H 4650 3200 50  0001 C CNN
F 1 "GND" H 4655 3277 50  0000 C CNN
F 2 "" H 4650 3450 50  0001 C CNN
F 3 "" H 4650 3450 50  0001 C CNN
	1    4650 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4450 5350 4450 5550
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FEB2E17
P 4450 5550
AR Path="/5FEB2E17" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FEB2E17" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FEB2E17" Ref="#PWR01011"  Part="1" 
F 0 "#PWR01011" H 4450 5300 50  0001 C CNN
F 1 "GND" H 4500 5400 50  0000 C CNN
F 2 "" H 4450 5550 50  0001 C CNN
F 3 "" H 4450 5550 50  0001 C CNN
	1    4450 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 5350 4550 5550
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FEB4EEF
P 4550 5550
AR Path="/5FEB4EEF" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FEB4EEF" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FEB4EEF" Ref="#PWR01012"  Part="1" 
F 0 "#PWR01012" H 4550 5300 50  0001 C CNN
F 1 "GND" H 4500 5400 50  0000 C CNN
F 2 "" H 4550 5550 50  0001 C CNN
F 3 "" H 4550 5550 50  0001 C CNN
	1    4550 5550
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FED1FF7
P 6300 4350
AR Path="/5F8C23F2/5FED1FF7" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FED1FF7" Ref="R1001"  Part="1" 
F 0 "R1001" H 6350 4400 50  0000 L CNN
F 1 "120R" H 6350 4300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 4350 50  0001 C CNN
F 3 "~" H 6300 4350 50  0001 C CNN
	1    6300 4350
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FED27DE
P 6300 4850
AR Path="/5F8C23F2/5FED27DE" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FED27DE" Ref="R1002"  Part="1" 
F 0 "R1002" H 6350 4900 50  0000 L CNN
F 1 "120R" H 6350 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 4850 50  0001 C CNN
F 3 "~" H 6300 4850 50  0001 C CNN
	1    6300 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4250 4900 4250
Wire Wire Line
	4850 4450 4900 4450
Wire Wire Line
	4850 4750 4900 4750
Wire Wire Line
	4850 4950 4900 4950
Wire Wire Line
	4900 4150 5100 4150
Wire Wire Line
	6300 4150 6300 4200
Wire Wire Line
	4900 4650 6000 4650
Wire Wire Line
	6300 4650 6300 4700
Wire Wire Line
	4900 4550 5300 4550
Wire Wire Line
	6300 4550 6300 4500
Wire Wire Line
	6300 5050 6300 5000
Wire Wire Line
	4900 4950 4900 5050
Wire Wire Line
	4900 4650 4900 4750
Wire Wire Line
	4900 4450 4900 4550
Wire Wire Line
	4900 4150 4900 4250
Wire Wire Line
	6300 4150 6500 4150
Connection ~ 6300 4150
Wire Wire Line
	6300 4550 6500 4550
Connection ~ 6300 4550
Wire Wire Line
	6300 4650 6500 4650
Connection ~ 6300 4650
Wire Wire Line
	6300 5050 6500 5050
Connection ~ 6300 5050
Text HLabel 6500 4150 2    50   BiDi ~ 0
RS485_RX_A
Text HLabel 6500 4550 2    50   BiDi ~ 0
RS485_RX_B
Text HLabel 6500 4650 2    50   BiDi ~ 0
RS485_TX_A
Text HLabel 6500 5050 2    50   BiDi ~ 0
RS485_TX_B
Wire Wire Line
	4350 3950 4350 3900
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FF19014
P 3800 3900
AR Path="/5F8BACBE/5FF19014" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FF19014" Ref="#PWR01007"  Part="1" 
F 0 "#PWR01007" H 3800 3750 50  0001 C CNN
F 1 "+3V3" H 3815 4073 50  0000 C CNN
F 2 "" H 3800 3900 50  0001 C CNN
F 3 "" H 3800 3900 50  0001 C CNN
	1    3800 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3800 4150 3850 4150
Wire Wire Line
	3800 3900 3800 4150
$Comp
L SIOMv01-rescue:+5V-power #PWR01008
U 1 1 5FF2210D
P 4350 3900
F 0 "#PWR01008" H 4350 3750 50  0001 C CNN
F 1 "+5V" H 4365 4073 50  0000 C CNN
F 2 "" H 4350 3900 50  0001 C CNN
F 3 "" H 4350 3900 50  0001 C CNN
	1    4350 3900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:SP0502BAHT-Power_Protection D1001
U 1 1 5FF46504
P 5200 5300
F 0 "D1001" H 5405 5346 50  0000 L CNN
F 1 "SP0502BAHT" H 5405 5255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5425 5250 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 5325 5425 50  0001 C CNN
	1    5200 5300
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:SP0502BAHT-Power_Protection D1002
U 1 1 5FF60559
P 6100 5300
F 0 "D1002" H 6305 5346 50  0000 L CNN
F 1 "SP0502BAHT" H 6305 5255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6325 5250 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 6225 5425 50  0001 C CNN
	1    6100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5500 5200 5550
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FF62611
P 5200 5550
AR Path="/5FF62611" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FF62611" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FF62611" Ref="#PWR01015"  Part="1" 
F 0 "#PWR01015" H 5200 5300 50  0001 C CNN
F 1 "GND" H 5205 5377 50  0000 C CNN
F 2 "" H 5200 5550 50  0001 C CNN
F 3 "" H 5200 5550 50  0001 C CNN
	1    5200 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 5500 6100 5550
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FF6633B
P 6100 5550
AR Path="/5FF6633B" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FF6633B" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FF6633B" Ref="#PWR01018"  Part="1" 
F 0 "#PWR01018" H 6100 5300 50  0001 C CNN
F 1 "GND" H 6105 5377 50  0000 C CNN
F 2 "" H 6100 5550 50  0001 C CNN
F 3 "" H 6100 5550 50  0001 C CNN
	1    6100 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6200 5100 6200 5050
Connection ~ 6200 5050
Wire Wire Line
	6200 5050 6300 5050
Wire Wire Line
	6000 5100 6000 4650
Connection ~ 6000 4650
Wire Wire Line
	6000 4650 6300 4650
Wire Wire Line
	5100 5100 5100 4150
Connection ~ 5100 4150
Wire Wire Line
	5100 4150 6300 4150
Wire Wire Line
	4900 5050 6200 5050
Wire Wire Line
	5300 5100 5300 4550
Connection ~ 5300 4550
Wire Wire Line
	5300 4550 6300 4550
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FFBBE68
P 3300 6900
AR Path="/5F8BACBE/5FFBBE68" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FFBBE68" Ref="C1002"  Part="1" 
F 0 "C1002" H 3415 6946 50  0000 L CNN
F 1 "100nF 50V" H 3415 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3338 6750 50  0001 C CNN
F 3 "~" H 3300 6900 50  0001 C CNN
	1    3300 6900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FFBBE6E
P 3300 7150
AR Path="/5FFBBE6E" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FFBBE6E" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FFBBE6E" Ref="#PWR01004"  Part="1" 
F 0 "#PWR01004" H 3300 6900 50  0001 C CNN
F 1 "GND" H 3305 6977 50  0000 C CNN
F 2 "" H 3300 7150 50  0001 C CNN
F 3 "" H 3300 7150 50  0001 C CNN
	1    3300 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 7150 3300 7050
Wire Wire Line
	3300 6750 3300 6650
$Comp
L SIOMv01-rescue:+5V-power #PWR?
U 1 1 5FFBBE76
P 4400 6600
AR Path="/5F8BACBE/5FFBBE76" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FFBBE76" Ref="#PWR01009"  Part="1" 
F 0 "#PWR01009" H 4400 6450 50  0001 C CNN
F 1 "+5V" H 4415 6773 50  0000 C CNN
F 2 "" H 4400 6600 50  0001 C CNN
F 3 "" H 4400 6600 50  0001 C CNN
	1    4400 6600
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FFBBE7C
P 4100 6900
AR Path="/5F8BACBE/5FFBBE7C" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FFBBE7C" Ref="C1004"  Part="1" 
F 0 "C1004" H 4215 6946 50  0000 L CNN
F 1 "1uF 16V" H 4215 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4138 6750 50  0001 C CNN
F 3 "~" H 4100 6900 50  0001 C CNN
	1    4100 6900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FFBBE82
P 4400 7150
AR Path="/5FFBBE82" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FFBBE82" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FFBBE82" Ref="#PWR01010"  Part="1" 
F 0 "#PWR01010" H 4400 6900 50  0001 C CNN
F 1 "GND" H 4405 6977 50  0000 C CNN
F 2 "" H 4400 7150 50  0001 C CNN
F 3 "" H 4400 7150 50  0001 C CNN
	1    4400 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 7150 4400 7100
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FFBBE89
P 3300 6650
AR Path="/5F8BACBE/5FFBBE89" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FFBBE89" Ref="#PWR01003"  Part="1" 
F 0 "#PWR01003" H 3300 6500 50  0001 C CNN
F 1 "+3V3" H 3315 6823 50  0000 C CNN
F 2 "" H 3300 6650 50  0001 C CNN
F 3 "" H 3300 6650 50  0001 C CNN
	1    3300 6650
	1    0    0    -1  
$EndComp
Text Notes 4000 7450 0    50   ~ 0
Near MAX13432EESD
Text Notes 3050 7450 0    50   ~ 0
Near MAX3226
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FFBBE91
P 4700 6900
AR Path="/5F8BACBE/5FFBBE91" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FFBBE91" Ref="C1005"  Part="1" 
F 0 "C1005" H 4815 6946 50  0000 L CNN
F 1 "100nF 50V" H 4815 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4738 6750 50  0001 C CNN
F 3 "~" H 4700 6900 50  0001 C CNN
	1    4700 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 7050 4100 7100
Wire Wire Line
	4100 7100 4400 7100
Connection ~ 4400 7100
Wire Wire Line
	4400 7100 4700 7100
Wire Wire Line
	4700 7100 4700 7050
Wire Wire Line
	4700 6750 4700 6700
Wire Wire Line
	4700 6700 4400 6700
Connection ~ 4400 6700
Wire Wire Line
	4400 6700 4100 6700
Wire Wire Line
	4100 6700 4100 6750
Wire Wire Line
	4400 6600 4400 6700
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FDA1049
P 4650 900
AR Path="/5F8BACBE/5FDA1049" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FDA1049" Ref="#PWR01013"  Part="1" 
F 0 "#PWR01013" H 4650 750 50  0001 C CNN
F 1 "+3V3" H 4665 1073 50  0000 C CNN
F 2 "" H 4650 900 50  0001 C CNN
F 3 "" H 4650 900 50  0001 C CNN
	1    4650 900 
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FC6D71A
P 3750 1450
AR Path="/5F8BACBE/5FC6D71A" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FC6D71A" Ref="C1003"  Part="1" 
F 0 "C1003" H 3865 1496 50  0000 L CNN
F 1 "100nF 50V" H 3865 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3788 1300 50  0001 C CNN
F 3 "~" H 3750 1450 50  0001 C CNN
	1    3750 1450
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FC6EFC3
P 5550 1450
AR Path="/5F8BACBE/5FC6EFC3" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FC6EFC3" Ref="C1006"  Part="1" 
F 0 "C1006" H 5665 1496 50  0000 L CNN
F 1 "100nF 50V" H 5665 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5588 1300 50  0001 C CNN
F 3 "~" H 5550 1450 50  0001 C CNN
	1    5550 1450
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FC6F4B0
P 6250 3250
AR Path="/5F8BACBE/5FC6F4B0" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FC6F4B0" Ref="C1008"  Part="1" 
F 0 "C1008" H 5850 3250 50  0000 L CNN
F 1 "100nF 50V" H 5800 3150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6288 3100 50  0001 C CNN
F 3 "~" H 6250 3250 50  0001 C CNN
	1    6250 3250
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FC6FCF1
P 6800 3250
AR Path="/5F8BACBE/5FC6FCF1" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FC6FCF1" Ref="C1009"  Part="1" 
F 0 "C1009" H 6915 3296 50  0000 L CNN
F 1 "100nF 50V" H 6915 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6838 3100 50  0001 C CNN
F 3 "~" H 6800 3250 50  0001 C CNN
	1    6800 3250
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FC84224
P 3800 3450
AR Path="/5FC84224" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FC84224" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FC84224" Ref="#PWR01006"  Part="1" 
F 0 "#PWR01006" H 3800 3200 50  0001 C CNN
F 1 "GND" H 3805 3277 50  0000 C CNN
F 2 "" H 3800 3450 50  0001 C CNN
F 3 "" H 3800 3450 50  0001 C CNN
	1    3800 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3800 2900 3850 2900
Wire Wire Line
	3800 2900 3800 3450
Wire Wire Line
	3850 3000 3650 3000
NoConn ~ 5450 3000
NoConn ~ 5450 2900
Text HLabel 5800 2300 2    50   Output ~ 0
TXD
Text HLabel 5800 2700 2    50   Input ~ 0
RXD
Wire Wire Line
	5450 2300 5800 2300
Wire Wire Line
	5450 2700 5800 2700
Wire Wire Line
	6250 3400 6250 3450
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FCF486E
P 6250 3450
AR Path="/5FCF486E" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FCF486E" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FCF486E" Ref="#PWR01019"  Part="1" 
F 0 "#PWR01019" H 6250 3200 50  0001 C CNN
F 1 "GND" H 6255 3277 50  0000 C CNN
F 2 "" H 6250 3450 50  0001 C CNN
F 3 "" H 6250 3450 50  0001 C CNN
	1    6250 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6800 3400 6800 3450
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FCFA4E7
P 6800 3450
AR Path="/5FCFA4E7" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FCFA4E7" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FCFA4E7" Ref="#PWR01020"  Part="1" 
F 0 "#PWR01020" H 6800 3200 50  0001 C CNN
F 1 "GND" H 6805 3277 50  0000 C CNN
F 2 "" H 6800 3450 50  0001 C CNN
F 3 "" H 6800 3450 50  0001 C CNN
	1    6800 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6250 3100 6250 2100
Wire Wire Line
	6250 2100 5450 2100
Wire Wire Line
	6800 3100 6800 1800
Wire Wire Line
	6800 1800 5450 1800
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FE1077B
P 9650 2500
AR Path="/5FE1077B" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5FE1077B" Ref="R?"  Part="1" 
AR Path="/5F8C2412/5FE1077B" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FE1077B" Ref="R1007"  Part="1" 
F 0 "R1007" V 9750 2450 50  0000 L CNN
F 1 "10K" V 9550 2450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9580 2500 50  0001 C CNN
F 3 "~" H 9650 2500 50  0001 C CNN
	1    9650 2500
	0    -1   -1   0   
$EndComp
$Comp
L SIOMv01-rescue:BSS138-Transistor_FET Q?
U 1 1 5FE10792
P 10050 2500
AR Path="/5FE10792" Ref="Q?"  Part="1" 
AR Path="/5F8BACBE/5FE10792" Ref="Q?"  Part="1" 
AR Path="/5F8C2412/5FE10792" Ref="Q?"  Part="1" 
AR Path="/5FB9434D/5FE10792" Ref="Q1001"  Part="1" 
F 0 "Q1001" H 10254 2546 50  0000 L CNN
F 1 "BSS138" H 10254 2455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10250 2425 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 10050 2500 50  0001 L CNN
	1    10050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2250 10150 2300
Wire Wire Line
	10150 2250 10450 2250
Wire Wire Line
	9450 2500 9500 2500
Wire Wire Line
	8800 2800 10150 2800
Connection ~ 10150 2800
Wire Wire Line
	10150 2800 10150 2700
Wire Wire Line
	10150 2850 10150 2800
Wire Wire Line
	10150 3150 10150 3200
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FE1078B
P 10150 3200
AR Path="/5FE1078B" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FE1078B" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/5FE1078B" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FE1078B" Ref="#PWR01025"  Part="1" 
F 0 "#PWR01025" H 10150 2950 50  0001 C CNN
F 1 "GND" H 10155 3027 50  0000 C CNN
F 2 "" H 10150 3200 50  0001 C CNN
F 3 "" H 10150 3200 50  0001 C CNN
	1    10150 3200
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FE10775
P 10150 3000
AR Path="/5FE10775" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5FE10775" Ref="R?"  Part="1" 
AR Path="/5F8C2412/5FE10775" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FE10775" Ref="R1009"  Part="1" 
F 0 "R1009" H 10250 3000 50  0000 L CNN
F 1 "150R" H 10250 2900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10080 3000 50  0001 C CNN
F 3 "~" H 10150 3000 50  0001 C CNN
	1    10150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2500 9850 2500
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 6003F275
P 9250 4550
AR Path="/6003F275" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/6003F275" Ref="R?"  Part="1" 
AR Path="/5F8C2412/6003F275" Ref="R?"  Part="1" 
AR Path="/5FB9434D/6003F275" Ref="R1006"  Part="1" 
F 0 "R1006" V 9150 4600 50  0000 L CNN
F 1 "10K" V 9150 4350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9180 4550 50  0001 C CNN
F 3 "~" H 9250 4550 50  0001 C CNN
	1    9250 4550
	0    -1   -1   0   
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 6003F285
P 10150 5150
AR Path="/6003F285" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/6003F285" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/6003F285" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/6003F285" Ref="#PWR01027"  Part="1" 
F 0 "#PWR01027" H 10150 4900 50  0001 C CNN
F 1 "GND" H 10155 4977 50  0000 C CNN
F 2 "" H 10150 5150 50  0001 C CNN
F 3 "" H 10150 5150 50  0001 C CNN
	1    10150 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4750 10150 5150
$Comp
L SIOMv01-rescue:BSS138-Transistor_FET Q?
U 1 1 6003F28C
P 10050 4550
AR Path="/6003F28C" Ref="Q?"  Part="1" 
AR Path="/5F8BACBE/6003F28C" Ref="Q?"  Part="1" 
AR Path="/5F8C2412/6003F28C" Ref="Q?"  Part="1" 
AR Path="/5FB9434D/6003F28C" Ref="Q1002"  Part="1" 
F 0 "Q1002" H 10254 4596 50  0000 L CNN
F 1 "BSS138" H 10254 4505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10250 4475 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 10050 4550 50  0001 L CNN
	1    10050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4300 10150 4350
Connection ~ 10150 4300
Wire Wire Line
	10150 4250 10150 4300
Wire Wire Line
	10150 3950 10150 3900
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 6003F2A9
P 10150 4100
AR Path="/6003F2A9" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/6003F2A9" Ref="R?"  Part="1" 
AR Path="/5F8C2412/6003F2A9" Ref="R?"  Part="1" 
AR Path="/5FB9434D/6003F2A9" Ref="R1010"  Part="1" 
F 0 "R1010" H 10220 4146 50  0000 L CNN
F 1 "100K" H 10250 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10080 4100 50  0001 C CNN
F 3 "~" H 10150 4100 50  0001 C CNN
	1    10150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4300 10300 4300
Text HLabel 10750 4300 2    50   Output ~ 0
HEATER
Wire Wire Line
	9400 4550 9700 4550
Wire Wire Line
	8800 4550 9100 4550
Text HLabel 8800 4550 0    50   Input ~ 0
BOILER
Text Notes 1350 1650 0    50   ~ 0
Power consumption 5V 300mA\nPower consumption 3V3 20mA + 200mA + 10mA
Text Notes 8450 750  0    50   ~ 0
Power consumption 12V 60mA
Text Notes 9550 5500 0    50   ~ 0
Electrical heater ouput via SSR
Text Notes 8450 4000 0    50   ~ 0
Power consumption 5V 5mA
Text Notes 10850 4400 0    50   ~ 0
5/0V
Text Notes 8150 1200 0    50   ~ 0
0..3.3V
Text Notes 9150 1700 0    50   ~ 0
A=3.2
Wire Wire Line
	4650 900  4650 1000
Wire Wire Line
	3750 1300 3850 1300
Wire Wire Line
	3850 1600 3750 1600
Wire Wire Line
	5550 1300 5450 1300
Wire Wire Line
	5450 1600 5550 1600
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 6087008F
P 3650 2900
AR Path="/5F8BACBE/6087008F" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/6087008F" Ref="#PWR01005"  Part="1" 
F 0 "#PWR01005" H 3650 2750 50  0001 C CNN
F 1 "+3V3" H 3800 2950 50  0000 C CNN
F 2 "" H 3650 2900 50  0001 C CNN
F 3 "" H 3650 2900 50  0001 C CNN
	1    3650 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3650 2900 3650 3000
Wire Wire Line
	3850 4350 3400 4350
Wire Wire Line
	3850 4850 3400 4850
Wire Wire Line
	3800 4550 3400 4550
Connection ~ 3800 4550
Wire Wire Line
	3800 4550 3800 5050
Text HLabel 3400 4350 0    50   Input ~ 0
USART3_RX_RS485
Text HLabel 3400 4550 0    50   Input ~ 0
USART3_DE_RS485
Text HLabel 3400 4850 0    50   Input ~ 0
USART3_TX_RS485
Wire Wire Line
	3850 2300 3550 2300
Wire Wire Line
	3850 2700 3550 2700
Text HLabel 3550 2300 0    50   Input ~ 0
USART2_TX_RS232
Text HLabel 3550 2700 0    50   Input ~ 0
USART2_RX_RS232
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 608A44BF
P 9700 4800
AR Path="/608A44BF" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/608A44BF" Ref="R?"  Part="1" 
AR Path="/5F8C2412/608A44BF" Ref="R?"  Part="1" 
AR Path="/5FB9434D/608A44BF" Ref="R1008"  Part="1" 
F 0 "R1008" H 9400 4850 50  0000 L CNN
F 1 "100K" H 9450 4750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9630 4800 50  0001 C CNN
F 3 "~" H 9700 4800 50  0001 C CNN
	1    9700 4800
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 608A9028
P 9700 5150
AR Path="/608A9028" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/608A9028" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/608A9028" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/608A9028" Ref="#PWR01023"  Part="1" 
F 0 "#PWR01023" H 9700 4900 50  0001 C CNN
F 1 "GND" H 9705 4977 50  0000 C CNN
F 2 "" H 9700 5150 50  0001 C CNN
F 3 "" H 9700 5150 50  0001 C CNN
	1    9700 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 5150 9700 4950
Wire Wire Line
	9700 4650 9700 4550
Connection ~ 9700 4550
Wire Wire Line
	9700 4550 9850 4550
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 608C2FBF
P 7600 1050
AR Path="/5F8C23F2/608C2FBF" Ref="R?"  Part="1" 
AR Path="/5FB9434D/608C2FBF" Ref="R1003"  Part="1" 
F 0 "R1003" V 7500 1050 50  0000 C CNN
F 1 "10K" V 7700 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7530 1050 50  0001 C CNN
F 3 "~" H 7600 1050 50  0001 C CNN
	1    7600 1050
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 608C3764
P 7950 1300
AR Path="/5F8BACBE/608C3764" Ref="C?"  Part="1" 
AR Path="/5FB9434D/608C3764" Ref="C1010"  Part="1" 
F 0 "C1010" H 8065 1346 50  0000 L CNN
F 1 "100nF 50V" H 8065 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7988 1150 50  0001 C CNN
F 3 "~" H 7950 1300 50  0001 C CNN
	1    7950 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1050 7950 1050
Wire Wire Line
	7950 1150 7950 1050
Connection ~ 7950 1050
Wire Wire Line
	7950 1050 8600 1050
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 608CCE1D
P 7950 1550
AR Path="/608CCE1D" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/608CCE1D" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/608CCE1D" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/608CCE1D" Ref="#PWR01021"  Part="1" 
F 0 "#PWR01021" H 7950 1300 50  0001 C CNN
F 1 "GND" H 7955 1377 50  0000 C CNN
F 2 "" H 7950 1550 50  0001 C CNN
F 3 "" H 7950 1550 50  0001 C CNN
	1    7950 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1550 7950 1450
Wire Wire Line
	7450 1050 7250 1050
Text Notes 7250 800  0    50   ~ 0
Cut-off frequency: 159Hz\nPWM-frequency >= 1KHz
Text HLabel 7250 1050 0    50   Input ~ 0
PWM_IN
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 6080C708
P 2550 6900
AR Path="/5F8BACBE/6080C708" Ref="C?"  Part="1" 
AR Path="/5FB9434D/6080C708" Ref="C1001"  Part="1" 
F 0 "C1001" H 2665 6946 50  0000 L CNN
F 1 "100nF 50V" H 2665 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2588 6750 50  0001 C CNN
F 3 "~" H 2550 6900 50  0001 C CNN
	1    2550 6900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 6080C70E
P 2550 7150
AR Path="/6080C70E" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/6080C70E" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/6080C70E" Ref="#PWR01002"  Part="1" 
F 0 "#PWR01002" H 2550 6900 50  0001 C CNN
F 1 "GND" H 2555 6977 50  0000 C CNN
F 2 "" H 2550 7150 50  0001 C CNN
F 3 "" H 2550 7150 50  0001 C CNN
	1    2550 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 7150 2550 7050
Wire Wire Line
	2550 6750 2550 6650
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 6080C716
P 2550 6650
AR Path="/5F8BACBE/6080C716" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/6080C716" Ref="#PWR01001"  Part="1" 
F 0 "#PWR01001" H 2550 6500 50  0001 C CNN
F 1 "+3V3" H 2565 6823 50  0000 C CNN
F 2 "" H 2550 6650 50  0001 C CNN
F 3 "" H 2550 6650 50  0001 C CNN
	1    2550 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1012
U 1 1 607B2F95
P 10450 4300
F 0 "R1012" V 10350 4350 50  0000 C CNN
F 1 "22R" V 10550 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.40x3.35mm_HandSolder" V 10380 4300 50  0001 C CNN
F 3 "~" H 10450 4300 50  0001 C CNN
	1    10450 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	10600 4300 10750 4300
$Comp
L SIOMv01-rescue:+5V-power #PWR01026
U 1 1 607BE416
P 10150 3900
F 0 "#PWR01026" H 10150 3750 50  0001 C CNN
F 1 "+5V" H 10165 4073 50  0000 C CNN
F 2 "" H 10150 3900 50  0001 C CNN
F 3 "" H 10150 3900 50  0001 C CNN
	1    10150 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4050 3100 4050
$Comp
L Device:CP C1011
U 1 1 608D901C
P 5300 6750
F 0 "C1011" H 5418 6796 50  0000 L CNN
F 1 "10uF 50V" H 5418 6705 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.3" H 5338 6600 50  0001 C CNN
F 3 "~" H 5300 6750 50  0001 C CNN
	1    5300 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 6600 5300 6400
Wire Wire Line
	5300 6400 5850 6400
Wire Wire Line
	5300 7100 5300 6900
Wire Wire Line
	5300 7100 5850 7100
$EndSCHEMATC
