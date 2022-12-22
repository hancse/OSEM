EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4500 4000 1000 3500
U 5F8C23BC
F0 "TmpSensor" 50
F1 "TmpSensor.sch" 50
F2 "TMP01" B L 4500 4300 50 
F3 "TMP02" B L 4500 4700 50 
F4 "TMP03" B L 4500 5100 50 
F5 "TMP04" B L 4500 5500 50 
F6 "TMP05" B L 4500 5900 50 
F7 "TMP06" B L 4500 6300 50 
F8 "TMP07" B L 4500 6700 50 
F9 "TMP08" B L 4500 7100 50 
F10 "SCL_TS" I R 5500 5750 50 
F11 "SDA_TS" B R 5500 5650 50 
$EndSheet
$Sheet
S 4500 8000 1000 1000
U 5F8C2412
F0 "FlowInput" 50
F1 "FlowInput.sch" 50
F2 "FLOW_01" I L 4500 8550 50 
F3 "FLOW_02" I L 4500 8650 50 
F4 "FLOW_IN_01" O R 5500 8400 50 
F5 "FLOW_IN_02" O R 5500 8500 50 
$EndSheet
$Sheet
S 6000 9500 4500 500 
U 5F8C28A9
F0 "PwrSupply" 50
F1 "PwrSupply.sch" 50
$EndSheet
$Comp
L SIOMv01-rescue:Conn_01x02-Connector_Generic J?
U 1 1 5F992FCC
P 12600 2800
AR Path="/5F8C23F2/5F992FCC" Ref="J?"  Part="1" 
AR Path="/5F992FCC" Ref="J111"  Part="1" 
F 0 "J111" H 12500 2900 50  0000 L CNN
F 1 "AnaOut01" H 12700 2750 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 12600 2800 50  0001 C CNN
F 3 "~" H 12600 2800 50  0001 C CNN
	1    12600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 2900 12350 2900
Wire Wire Line
	12350 2900 12350 2950
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5F992FD7
P 12350 2950
AR Path="/5F8C23F2/5F992FD7" Ref="#PWR?"  Part="1" 
AR Path="/5F992FD7" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 12350 2700 50  0001 C CNN
F 1 "GND" H 12355 2777 50  0000 C CNN
F 2 "" H 12350 2950 50  0001 C CNN
F 3 "" H 12350 2950 50  0001 C CNN
	1    12350 2950
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x02-Connector_Generic J?
U 1 1 5F992FED
P 12600 3350
AR Path="/5F8C23F2/5F992FED" Ref="J?"  Part="1" 
AR Path="/5F992FED" Ref="J112"  Part="1" 
F 0 "J112" H 12500 3450 50  0000 L CNN
F 1 "AnaOut2" H 12700 3300 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 12600 3350 50  0001 C CNN
F 3 "~" H 12600 3350 50  0001 C CNN
	1    12600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 3450 12350 3450
Wire Wire Line
	12350 3450 12350 3500
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5F992FF7
P 12350 3500
AR Path="/5F8C23F2/5F992FF7" Ref="#PWR?"  Part="1" 
AR Path="/5F992FF7" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 12350 3250 50  0001 C CNN
F 1 "GND" H 12355 3327 50  0000 C CNN
F 2 "" H 12350 3500 50  0001 C CNN
F 3 "" H 12350 3500 50  0001 C CNN
	1    12350 3500
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x04-Connector_Generic J?
U 1 1 5FA08E87
P 12600 4200
AR Path="/5F8C27AF/5FA08E87" Ref="J?"  Part="1" 
AR Path="/5FA08E87" Ref="J113"  Part="1" 
F 0 "J113" H 12500 4400 50  0000 L CNN
F 1 "I2C 5V #1" H 12700 4150 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_4-G-3.81_1x04_P3.81mm_Vertical" H 12600 4200 50  0001 C CNN
F 3 "~" H 12600 4200 50  0001 C CNN
	1    12600 4200
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FA08E8D
P 12350 4450
AR Path="/5F8C27AF/5FA08E8D" Ref="#PWR?"  Part="1" 
AR Path="/5FA08E8D" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 12350 4200 50  0001 C CNN
F 1 "GND" H 12355 4277 50  0000 C CNN
F 2 "" H 12350 4450 50  0001 C CNN
F 3 "" H 12350 4450 50  0001 C CNN
	1    12350 4450
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+5V-power #PWR?
U 1 1 5FA08E93
P 12300 4050
AR Path="/5F8C27AF/5FA08E93" Ref="#PWR?"  Part="1" 
AR Path="/5FA08E93" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 12300 3900 50  0001 C CNN
F 1 "+5V" H 12315 4223 50  0000 C CNN
F 2 "" H 12300 4050 50  0001 C CNN
F 3 "" H 12300 4050 50  0001 C CNN
	1    12300 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 4050 12300 4200
Wire Wire Line
	12300 4200 12400 4200
Wire Wire Line
	12400 4100 12350 4100
Wire Wire Line
	12350 4100 12350 4450
Wire Wire Line
	12400 4400 12200 4400
Wire Wire Line
	12100 4300 12400 4300
$Sheet
S 11000 2700 1000 1000
U 5F8C23F2
F0 "ValveCtrl" 50
F1 "ValveCtrl.sch" 50
F2 "ANA_OUT_10V_01" O R 12000 2800 50 
F3 "ANA_OUT_10V_02" O R 12000 3350 50 
F4 "DAC1_OUT1_VALVE_1" I L 11000 3000 50 
F5 "DAC1_OUT2_VALVE_2" I L 11000 3150 50 
$EndSheet
$Sheet
S 11000 4000 1000 1500
U 5F8C27AF
F0 "I2CInterface" 50
F1 "I2CInterface.sch" 50
F2 "SDA_5V" B R 12000 4850 50 
F3 "SCL_5V" O R 12000 4750 50 
F4 "SCL_AUX" I L 11000 4850 50 
F5 "SDA_AUX" B L 11000 4750 50 
$EndSheet
$Comp
L SIOMv01-rescue:RJ12-Connector J110
U 1 1 5FAF413E
P 3700 3050
AR Path="/5FAF413E" Ref="J110"  Part="1" 
AR Path="/5F8BACBE/5FAF413E" Ref="J?"  Part="1" 
F 0 "J110" H 3700 3500 50  0000 C CNN
F 1 "P1" H 3300 3100 50  0000 C CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 3700 3075 50  0001 C CNN
F 3 "~" V 3700 3075 50  0001 C CNN
	1    3700 3050
	1    0    0    -1  
$EndComp
NoConn ~ 4100 3250
NoConn ~ 4100 2750
NoConn ~ 4100 2950
NoConn ~ 4100 3150
Wire Wire Line
	4100 3050 4150 3050
Wire Wire Line
	4150 3050 4150 3500
$Comp
L SIOMv01-rescue:GND-power #PWR0106
U 1 1 5FAF414A
P 4150 3500
AR Path="/5FAF414A" Ref="#PWR0106"  Part="1" 
AR Path="/5F8BACBE/5FAF414A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 4150 3250 50  0001 C CNN
F 1 "GND" H 4155 3327 50  0000 C CNN
F 2 "" H 4150 3500 50  0001 C CNN
F 3 "" H 4150 3500 50  0001 C CNN
	1    4150 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2850 4100 2850
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF15D9
P 3250 4300
AR Path="/5F8C23BC/5FAF15D9" Ref="J?"  Part="1" 
AR Path="/5FAF15D9" Ref="J101"  Part="1" 
F 0 "J101" H 3250 4500 50  0000 C CNN
F 1 "TMP01" H 3500 4300 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_3-G-3.81_1x03_P3.81mm_Vertical" H 3250 4300 50  0001 C CNN
F 3 "~" H 3250 4300 50  0001 C CNN
	1    3250 4300
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF15DF
P 3250 4700
AR Path="/5F8C23BC/5FAF15DF" Ref="J?"  Part="1" 
AR Path="/5FAF15DF" Ref="J102"  Part="1" 
F 0 "J102" H 3250 4900 50  0000 C CNN
F 1 "TMP02" H 3500 4700 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_3-G-3.81_1x03_P3.81mm_Vertical" H 3250 4700 50  0001 C CNN
F 3 "~" H 3250 4700 50  0001 C CNN
	1    3250 4700
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF15E5
P 3250 5100
AR Path="/5F8C23BC/5FAF15E5" Ref="J?"  Part="1" 
AR Path="/5FAF15E5" Ref="J103"  Part="1" 
F 0 "J103" H 3250 5300 50  0000 C CNN
F 1 "TMP03" H 3500 5100 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_3-G-3.81_1x03_P3.81mm_Vertical" H 3250 5100 50  0001 C CNN
F 3 "~" H 3250 5100 50  0001 C CNN
	1    3250 5100
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF15EB
P 3250 5500
AR Path="/5F8C23BC/5FAF15EB" Ref="J?"  Part="1" 
AR Path="/5FAF15EB" Ref="J104"  Part="1" 
F 0 "J104" H 3250 5700 50  0000 C CNN
F 1 "TMP04" H 3500 5500 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_3-G-3.81_1x03_P3.81mm_Vertical" H 3250 5500 50  0001 C CNN
F 3 "~" H 3250 5500 50  0001 C CNN
	1    3250 5500
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF15F1
P 3250 5900
AR Path="/5F8C23BC/5FAF15F1" Ref="J?"  Part="1" 
AR Path="/5FAF15F1" Ref="J105"  Part="1" 
F 0 "J105" H 3250 6100 50  0000 C CNN
F 1 "TMP05" H 3500 5900 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_3-G-3.81_1x03_P3.81mm_Vertical" H 3250 5900 50  0001 C CNN
F 3 "~" H 3250 5900 50  0001 C CNN
	1    3250 5900
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF15F7
P 3250 6300
AR Path="/5F8C23BC/5FAF15F7" Ref="J?"  Part="1" 
AR Path="/5FAF15F7" Ref="J106"  Part="1" 
F 0 "J106" H 3250 6500 50  0000 C CNN
F 1 "TMP06" H 3500 6300 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_3-G-3.81_1x03_P3.81mm_Vertical" H 3250 6300 50  0001 C CNN
F 3 "~" H 3250 6300 50  0001 C CNN
	1    3250 6300
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF15FD
P 3250 6700
AR Path="/5F8C23BC/5FAF15FD" Ref="J?"  Part="1" 
AR Path="/5FAF15FD" Ref="J107"  Part="1" 
F 0 "J107" H 3250 6900 50  0000 C CNN
F 1 "TMP07" H 3500 6700 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_3-G-3.81_1x03_P3.81mm_Vertical" H 3250 6700 50  0001 C CNN
F 3 "~" H 3250 6700 50  0001 C CNN
	1    3250 6700
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF1603
P 3250 7100
AR Path="/5F8C23BC/5FAF1603" Ref="J?"  Part="1" 
AR Path="/5FAF1603" Ref="J108"  Part="1" 
F 0 "J108" H 3250 7300 50  0000 C CNN
F 1 "TMP08" H 3500 7100 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_3-G-3.81_1x03_P3.81mm_Vertical" H 3250 7100 50  0001 C CNN
F 3 "~" H 3250 7100 50  0001 C CNN
	1    3250 7100
	-1   0    0    -1  
$EndComp
Connection ~ 3900 5200
Wire Wire Line
	3900 5200 3900 5600
Wire Wire Line
	3900 4400 3900 4800
Connection ~ 3900 4800
Wire Wire Line
	3900 4800 3900 5200
Wire Wire Line
	3950 4100 3950 4200
Connection ~ 3950 4200
Wire Wire Line
	3950 4200 3950 4600
Connection ~ 3950 4600
Wire Wire Line
	3950 4600 3950 5000
Connection ~ 3950 5000
Wire Wire Line
	3950 5000 3950 5400
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FAF1623
P 3950 4100
AR Path="/5F8C23BC/5FAF1623" Ref="#PWR?"  Part="1" 
AR Path="/5FAF1623" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 3950 3950 50  0001 C CNN
F 1 "+3V3" H 3965 4273 50  0000 C CNN
F 2 "" H 3950 4100 50  0001 C CNN
F 3 "" H 3950 4100 50  0001 C CNN
	1    3950 4100
	1    0    0    -1  
$EndComp
Connection ~ 3900 7200
Wire Wire Line
	3900 7200 3900 7250
Connection ~ 3900 6800
Wire Wire Line
	3900 6800 3900 7200
Wire Wire Line
	3900 6000 3900 6400
Connection ~ 3900 6400
Wire Wire Line
	3900 6400 3900 6800
Wire Wire Line
	3950 5800 3950 6200
Connection ~ 3950 6200
Wire Wire Line
	3950 6200 3950 6600
Connection ~ 3950 6600
Wire Wire Line
	3950 6600 3950 7000
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FAF164F
P 3900 7250
AR Path="/5F8C23BC/5FAF164F" Ref="#PWR?"  Part="1" 
AR Path="/5FAF164F" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 3900 7000 50  0001 C CNN
F 1 "GND" H 3905 7077 50  0000 C CNN
F 2 "" H 3900 7250 50  0001 C CNN
F 3 "" H 3900 7250 50  0001 C CNN
	1    3900 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5600 3900 6000
Connection ~ 3900 5600
Connection ~ 3900 6000
Wire Wire Line
	3950 5800 3950 5400
Connection ~ 3950 5800
Connection ~ 3950 5400
Wire Wire Line
	3900 8750 3900 8800
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FBFA64F
P 3900 8800
AR Path="/5F8C23BC/5FBFA64F" Ref="#PWR?"  Part="1" 
AR Path="/5FBFA64F" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 3900 8550 50  0001 C CNN
F 1 "GND" H 3905 8627 50  0000 C CNN
F 2 "" H 3900 8800 50  0001 C CNN
F 3 "" H 3900 8800 50  0001 C CNN
	1    3900 8800
	1    0    0    -1  
$EndComp
Text Notes 13500 8550 0    50   ~ 0
Electrical heater ouput via SSR
Text Notes 13500 7450 0    50   ~ 0
RS485/RS232/RS422
Text Notes 13500 2950 0    50   ~ 0
Valve control
Text Notes 13500 4300 0    50   ~ 0
LCD display interface
Text Notes 13500 5250 0    50   ~ 0
Optionele I2C interface
Text Notes 1500 3050 0    50   ~ 0
Connection to smartmeter
Text Notes 2050 5750 0    50   ~ 0
8x Temp sensors\nDS18B20
Text Notes 2050 8450 0    50   ~ 0
Flowsensors
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FCDABAE
P 12550 6500
AR Path="/5F8C23F2/5FCDABAE" Ref="#PWR?"  Part="1" 
AR Path="/5FCDABAE" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 12550 6250 50  0001 C CNN
F 1 "GND" H 12555 6327 50  0000 C CNN
F 2 "" H 12550 6500 50  0001 C CNN
F 3 "" H 12550 6500 50  0001 C CNN
	1    12550 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12550 6450 12550 6500
Wire Wire Line
	12700 6450 12550 6450
$Comp
L SIOMv01-rescue:Conn_01x04-Connector_Generic J?
U 1 1 5FCDABA4
P 12900 6250
AR Path="/5F8C23F2/5FCDABA4" Ref="J?"  Part="1" 
AR Path="/5FCDABA4" Ref="J115"  Part="1" 
F 0 "J115" H 12800 6450 50  0000 L CNN
F 1 "AnaOut Heatpump" H 13000 6250 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_4-G-3.81_1x04_P3.81mm_Vertical" H 12900 6250 50  0001 C CNN
F 3 "~" H 12900 6250 50  0001 C CNN
	1    12900 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 2800 12400 2800
Wire Wire Line
	12000 3350 12400 3350
$Comp
L SIOMv01-rescue:+24V-power #PWR0120
U 1 1 5FE2CB03
P 12600 6100
F 0 "#PWR0120" H 12600 5950 50  0001 C CNN
F 1 "+24V" H 12615 6273 50  0000 C CNN
F 2 "" H 12600 6100 50  0001 C CNN
F 3 "" H 12600 6100 50  0001 C CNN
	1    12600 6100
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x02-Connector_Generic J?
U 1 1 600B1B60
P 12900 8450
AR Path="/5F8C23F2/600B1B60" Ref="J?"  Part="1" 
AR Path="/600B1B60" Ref="J117"  Part="1" 
F 0 "J117" H 12850 8550 50  0000 L CNN
F 1 "Boiler Heater" H 13000 8400 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 12900 8450 50  0001 C CNN
F 3 "~" H 12900 8450 50  0001 C CNN
	1    12900 8450
	1    0    0    -1  
$EndComp
Text Notes 13500 6350 0    50   ~ 0
Analog output: 0..10V, 0..20mA
$Comp
L Connector_Generic:Conn_01x07 J?
U 1 1 600122FF
P 12900 7350
AR Path="/5F8C23F2/600122FF" Ref="J?"  Part="1" 
AR Path="/600122FF" Ref="J116"  Part="1" 
F 0 "J116" H 12800 7750 50  0000 L CNN
F 1 "Serial Heatpump" H 13000 7350 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_7-G-3.81_1x07_P3.81mm_Vertical" H 12900 7350 50  0001 C CNN
F 3 "~" H 12900 7350 50  0001 C CNN
	1    12900 7350
	1    0    0    1   
$EndComp
Wire Notes Line
	10850 5850 10850 9250
Wire Notes Line
	10850 9250 15150 9250
Wire Notes Line
	15150 9250 15150 5850
Wire Notes Line
	15150 5850 10850 5850
Wire Wire Line
	6000 8400 5500 8400
Wire Wire Line
	5500 8500 6000 8500
Wire Wire Line
	6000 5650 5500 5650
Wire Wire Line
	5500 5750 6000 5750
Wire Wire Line
	10500 4750 11000 4750
Wire Wire Line
	11000 4850 10500 4850
Text Notes 15100 7000 3    100  ~ 0
Expansion Board
$Sheet
S 6000 2500 4500 6500
U 5F97DE9D
F0 "MainCtrl" 50
F1 "MainCtrl.sch" 50
F2 "LPUART1_RX_P1" O L 6000 2850 50 
F3 "EXTI0_FREQ_CALC" I L 6000 8400 50 
F4 "EXTI1_FREQ_CALC" I L 6000 8500 50 
F5 "I2C1_SCL_TEMP_SENSORS" O L 6000 5750 50 
F6 "I2C1_SDA_TEMP_SENSORS" B L 6000 5650 50 
F7 "DAC1_OUT1_VALVE_1" O R 10500 3000 50 
F8 "DAC1_OUT2_VALVE_2" O R 10500 3150 50 
F9 "I2C1_SCL_TEMP_SENSORS" O R 10500 4850 50 
F10 "I2C1_SDA_TEMP_SENSORS" B R 10500 4750 50 
F11 "USART2_RX_RS232" I R 10500 7150 50 
F12 "USART2_TX_RS232" O R 10500 7250 50 
F13 "USART3_RX_RS485" I R 10500 7350 50 
F14 "USART3_TX_RS485" O R 10500 7450 50 
F15 "USART3_DE_RS485" O R 10500 7550 50 
F16 "TIM2_CH1_BOILER_CONTROL" O R 10500 8550 50 
F17 "TIM1_CH1_HEATPUMP_CONTROL" O R 10500 6300 50 
F18 "I2C2_SCL_EEPROM" I R 10500 2600 50 
F19 "I2C2_SDA_EEPROM" B R 10500 2700 50 
$EndSheet
Wire Wire Line
	11000 6300 10500 6300
Wire Wire Line
	11000 7150 10500 7150
Wire Wire Line
	10500 7250 11000 7250
Wire Wire Line
	11000 7350 10500 7350
Wire Wire Line
	10500 7450 11000 7450
Wire Wire Line
	11000 7550 10500 7550
Wire Wire Line
	11000 8550 10500 8550
$Comp
L Mechanical:MountingHole_Pad H104
U 1 1 60051043
P 10400 10500
F 0 "H104" H 10500 10549 50  0000 L CNN
F 1 "MountingHole_Pad" H 10500 10458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 10400 10500 50  0001 C CNN
F 3 "~" H 10400 10500 50  0001 C CNN
	1    10400 10500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H103
U 1 1 60052C0F
P 9450 10500
F 0 "H103" H 9550 10549 50  0000 L CNN
F 1 "MountingHole_Pad" H 9550 10458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 9450 10500 50  0001 C CNN
F 3 "~" H 9450 10500 50  0001 C CNN
	1    9450 10500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H102
U 1 1 60052EB9
P 8500 10500
F 0 "H102" H 8600 10549 50  0000 L CNN
F 1 "MountingHole_Pad" H 8600 10458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 8500 10500 50  0001 C CNN
F 3 "~" H 8500 10500 50  0001 C CNN
	1    8500 10500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H101
U 1 1 60053070
P 7550 10500
F 0 "H101" H 7650 10549 50  0000 L CNN
F 1 "MountingHole_Pad" H 7650 10458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 7550 10500 50  0001 C CNN
F 3 "~" H 7550 10500 50  0001 C CNN
	1    7550 10500
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 60053F3B
P 7550 10650
AR Path="/5F8C23BC/60053F3B" Ref="#PWR?"  Part="1" 
AR Path="/60053F3B" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 7550 10400 50  0001 C CNN
F 1 "GND" H 7555 10477 50  0000 C CNN
F 2 "" H 7550 10650 50  0001 C CNN
F 3 "" H 7550 10650 50  0001 C CNN
	1    7550 10650
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 60054512
P 8500 10650
AR Path="/5F8C23BC/60054512" Ref="#PWR?"  Part="1" 
AR Path="/60054512" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 8500 10400 50  0001 C CNN
F 1 "GND" H 8505 10477 50  0000 C CNN
F 2 "" H 8500 10650 50  0001 C CNN
F 3 "" H 8500 10650 50  0001 C CNN
	1    8500 10650
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 60054741
P 9450 10650
AR Path="/5F8C23BC/60054741" Ref="#PWR?"  Part="1" 
AR Path="/60054741" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 9450 10400 50  0001 C CNN
F 1 "GND" H 9455 10477 50  0000 C CNN
F 2 "" H 9450 10650 50  0001 C CNN
F 3 "" H 9450 10650 50  0001 C CNN
	1    9450 10650
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 600549C7
P 10400 10650
AR Path="/5F8C23BC/600549C7" Ref="#PWR?"  Part="1" 
AR Path="/600549C7" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 10400 10400 50  0001 C CNN
F 1 "GND" H 10405 10477 50  0000 C CNN
F 2 "" H 10400 10650 50  0001 C CNN
F 3 "" H 10400 10650 50  0001 C CNN
	1    10400 10650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID101
U 1 1 60056762
P 6900 10500
F 0 "FID101" H 6985 10546 50  0000 L CNN
F 1 "Fiducial" H 6985 10455 50  0000 L CNN
F 2 "Fiducial:Fiducial_1.5mm_Mask3mm" H 6900 10500 50  0001 C CNN
F 3 "~" H 6900 10500 50  0001 C CNN
	1    6900 10500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID102
U 1 1 60056CAB
P 6900 10700
F 0 "FID102" H 6985 10746 50  0000 L CNN
F 1 "Fiducial" H 6985 10655 50  0000 L CNN
F 2 "Fiducial:Fiducial_1.5mm_Mask3mm" H 6900 10700 50  0001 C CNN
F 3 "~" H 6900 10700 50  0001 C CNN
	1    6900 10700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID103
U 1 1 600570A7
P 6900 10900
F 0 "FID103" H 6985 10946 50  0000 L CNN
F 1 "Fiducial" H 6985 10855 50  0000 L CNN
F 2 "Fiducial:Fiducial_1.5mm_Mask3mm" H 6900 10900 50  0001 C CNN
F 3 "~" H 6900 10900 50  0001 C CNN
	1    6900 10900
	1    0    0    -1  
$EndComp
$Sheet
S 4500 2500 1000 1000
U 5F8BACBE
F0 "P1port" 50
F1 "P1port.sch" 50
F2 "P1_INPUT" I L 4500 2850 50 
F3 "UART_RX" I R 5500 2850 50 
$EndSheet
$Sheet
S 11000 1200 1000 950 
U 60781610
F0 "TinyPico" 50
F1 "Tiny_PICO.sch" 50
F2 "SCL_TINYPICO" O L 11000 1650 50 
F3 "SDA_TINYPICO" B L 11000 1800 50 
$EndSheet
Wire Wire Line
	12600 6100 12600 6150
Wire Wire Line
	12600 6150 12700 6150
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 608F499E
P 12550 7700
AR Path="/5F8C23F2/608F499E" Ref="#PWR?"  Part="1" 
AR Path="/608F499E" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 12550 7450 50  0001 C CNN
F 1 "GND" H 12555 7527 50  0000 C CNN
F 2 "" H 12550 7700 50  0001 C CNN
F 3 "" H 12550 7700 50  0001 C CNN
	1    12550 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12550 7700 12550 7650
Wire Wire Line
	12550 7650 12700 7650
Wire Wire Line
	12700 7150 12350 7150
Wire Wire Line
	12700 7050 12350 7050
Wire Wire Line
	12650 8400 12650 8450
Wire Wire Line
	12650 8450 12700 8450
Wire Wire Line
	12350 8550 12700 8550
Wire Wire Line
	4500 8550 3450 8550
$Comp
L power:+5V #PWR0107
U 1 1 609483F9
P 4250 7700
F 0 "#PWR0107" H 4250 7550 50  0001 C CNN
F 1 "+5V" H 4265 7873 50  0000 C CNN
F 2 "" H 4250 7700 50  0001 C CNN
F 3 "" H 4250 7700 50  0001 C CNN
	1    4250 7700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0103
U 1 1 60948EA9
P 3900 7700
F 0 "#PWR0103" H 3900 7550 50  0001 C CNN
F 1 "+12V" H 3915 7873 50  0000 C CNN
F 2 "" H 3900 7700 50  0001 C CNN
F 3 "" H 3900 7700 50  0001 C CNN
	1    3900 7700
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR0101
U 1 1 609498B1
P 3700 7700
F 0 "#PWR0101" H 3700 7550 50  0001 C CNN
F 1 "+24V" H 3715 7873 50  0000 C CNN
F 2 "" H 3700 7700 50  0001 C CNN
F 3 "" H 3700 7700 50  0001 C CNN
	1    3700 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 8750 3900 8750
Wire Wire Line
	3450 8650 4500 8650
Wire Wire Line
	3700 8250 3450 8250
$Comp
L Device:Fuse F103
U 1 1 60970860
P 4250 8000
F 0 "F103" V 4350 8000 50  0000 C CNN
F 1 "100mA" V 4150 8000 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4180 8000 50  0001 C CNN
F 3 "~" H 4250 8000 50  0001 C CNN
	1    4250 8000
	-1   0    0    1   
$EndComp
$Comp
L Device:Fuse F102
U 1 1 609889FB
P 3900 8000
F 0 "F102" V 3800 8000 50  0000 C CNN
F 1 "100mA" V 3750 8000 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3830 8000 50  0001 C CNN
F 3 "~" H 3900 8000 50  0001 C CNN
	1    3900 8000
	-1   0    0    1   
$EndComp
$Comp
L Device:Fuse F101
U 1 1 60988BB2
P 3700 8000
F 0 "F101" V 3900 8000 50  0000 C CNN
F 1 "100mA" V 3800 8000 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3630 8000 50  0001 C CNN
F 3 "~" H 3700 8000 50  0001 C CNN
	1    3700 8000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 7700 3700 7850
Wire Wire Line
	3900 7700 3900 7850
Wire Wire Line
	4250 7700 4250 7850
$Comp
L Connector_Generic:Conn_01x06 J109
U 1 1 609B49BA
P 3250 8450
F 0 "J109" H 3550 8400 50  0000 C CNN
F 1 "Flowsensors" H 3550 8300 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_6-G-3.81_1x06_P3.81mm_Vertical" H 3250 8450 50  0001 C CNN
F 3 "~" H 3250 8450 50  0001 C CNN
	1    3250 8450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 7200 3900 7200
Wire Wire Line
	3450 7100 4500 7100
Wire Wire Line
	3450 7000 3950 7000
Wire Wire Line
	3450 6800 3900 6800
Wire Wire Line
	3450 6700 4500 6700
Wire Wire Line
	3450 6600 3950 6600
Wire Wire Line
	3450 6400 3900 6400
Wire Wire Line
	3450 6300 4500 6300
Wire Wire Line
	3450 6200 3950 6200
Wire Wire Line
	3450 6000 3900 6000
Wire Wire Line
	3450 5900 4500 5900
Wire Wire Line
	3450 5800 3950 5800
Wire Wire Line
	3450 5600 3900 5600
Wire Wire Line
	3450 5500 4500 5500
Wire Wire Line
	3450 5400 3950 5400
Wire Wire Line
	3450 5200 3900 5200
Wire Wire Line
	3450 5100 4500 5100
Wire Wire Line
	3450 5000 3950 5000
Wire Wire Line
	3450 4800 3900 4800
Wire Wire Line
	3450 4700 4500 4700
Wire Wire Line
	3450 4600 3950 4600
Wire Wire Line
	3450 4400 3900 4400
Wire Wire Line
	3450 4300 4500 4300
Wire Wire Line
	3450 4200 3950 4200
Wire Wire Line
	7550 10650 7550 10600
Wire Wire Line
	8500 10650 8500 10600
Wire Wire Line
	9450 10650 9450 10600
Wire Wire Line
	10400 10650 10400 10600
Wire Wire Line
	10500 3000 11000 3000
Wire Wire Line
	10500 3150 11000 3150
Wire Wire Line
	5500 2850 6000 2850
Wire Wire Line
	10500 2700 10850 2700
Wire Wire Line
	10850 2700 10850 1800
Wire Wire Line
	10850 1800 11000 1800
Wire Wire Line
	10500 2600 10750 2600
Wire Wire Line
	10750 2600 10750 1650
Wire Wire Line
	10750 1650 11000 1650
Wire Wire Line
	3900 8150 3900 8350
Wire Wire Line
	3450 8350 3900 8350
Wire Wire Line
	3700 8150 3700 8250
Wire Wire Line
	4250 8150 4250 8450
Wire Wire Line
	3450 8450 4250 8450
Wire Wire Line
	12350 7250 12700 7250
Wire Wire Line
	12350 7350 12700 7350
Wire Wire Line
	12350 7450 12700 7450
Wire Wire Line
	12700 7550 12350 7550
$Comp
L SIOMv01-rescue:+5V-power #PWR?
U 1 1 607B1305
P 12650 8400
AR Path="/5F8C27AF/607B1305" Ref="#PWR?"  Part="1" 
AR Path="/607B1305" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 12650 8250 50  0001 C CNN
F 1 "+5V" H 12665 8573 50  0000 C CNN
F 2 "" H 12650 8400 50  0001 C CNN
F 3 "" H 12650 8400 50  0001 C CNN
	1    12650 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 4300 12100 4750
Wire Wire Line
	12200 4400 12200 4850
Wire Wire Line
	12000 4750 12100 4750
Wire Wire Line
	12000 4850 12200 4850
$Sheet
S 11000 6000 1350 3050
U 5FB9434D
F0 "ExpansionBoard" 50
F1 "Expansion board.sch" 50
F2 "V_OUT" O R 12350 6350 50 
F3 "I_OUT" O R 12350 6250 50 
F4 "RS485_RX_A" I R 12350 7250 50 
F5 "RS485_RX_B" I R 12350 7350 50 
F6 "RS485_TX_A" I R 12350 7550 50 
F7 "RS485_TX_B" I R 12350 7450 50 
F8 "TXD" O R 12350 7050 50 
F9 "RXD" I R 12350 7150 50 
F10 "HEATER" O R 12350 8550 50 
F11 "USART2_RX_RS232" O L 11000 7150 50 
F12 "USART2_TX_RS232" I L 11000 7250 50 
F13 "USART3_RX_RS485" O L 11000 7350 50 
F14 "USART3_TX_RS485" I L 11000 7450 50 
F15 "USART3_DE_RS485" I L 11000 7550 50 
F16 "PWM_IN" I L 11000 6300 50 
F17 "BOILER" I L 11000 8550 50 
$EndSheet
Wire Wire Line
	12350 6350 12700 6350
Wire Wire Line
	12350 6250 12700 6250
$EndSCHEMATC
