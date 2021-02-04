EESchema Schematic File Version 4
LIBS:SIOMv01-cache
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 9
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
F2 "FLOW_01" I L 4500 8250 50 
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
$Sheet
S 4500 2500 1000 1000
U 5F8BACBE
F0 "P1port" 50
F1 "P1port.sch" 50
F2 "P1_INPUT" I L 4500 2850 50 
F3 "SPI_CS_P1" I R 5500 2800 50 
F4 "SPI_MOSI" I R 5500 2900 50 
F5 "SPI_MISO" O R 5500 3000 50 
F6 "SPI_SCLK" I R 5500 3100 50 
F7 "INT_P1" O R 5500 3200 50 
$EndSheet
$Comp
L SIOMv01-rescue:Conn_01x02-Connector_Generic J?
U 1 1 5F992FCC
P 12600 2600
AR Path="/5F8C23F2/5F992FCC" Ref="J?"  Part="1" 
AR Path="/5F992FCC" Ref="J101"  Part="1" 
F 0 "J101" H 12500 2700 50  0000 L CNN
F 1 "AnaOut01" H 12700 2550 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 12600 2600 50  0001 C CNN
F 3 "~" H 12600 2600 50  0001 C CNN
	1    12600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 2700 12350 2700
Wire Wire Line
	12350 2700 12350 2750
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5F992FD7
P 12350 2750
AR Path="/5F8C23F2/5F992FD7" Ref="#PWR?"  Part="1" 
AR Path="/5F992FD7" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 12350 2500 50  0001 C CNN
F 1 "GND" H 12355 2577 50  0000 C CNN
F 2 "" H 12350 2750 50  0001 C CNN
F 3 "" H 12350 2750 50  0001 C CNN
	1    12350 2750
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x02-Connector_Generic J?
U 1 1 5F992FED
P 12600 3150
AR Path="/5F8C23F2/5F992FED" Ref="J?"  Part="1" 
AR Path="/5F992FED" Ref="J103"  Part="1" 
F 0 "J103" H 12500 3250 50  0000 L CNN
F 1 "AnaOut2" H 12700 3100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 12600 3150 50  0001 C CNN
F 3 "~" H 12600 3150 50  0001 C CNN
	1    12600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 3250 12350 3250
Wire Wire Line
	12350 3250 12350 3300
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5F992FF7
P 12350 3300
AR Path="/5F8C23F2/5F992FF7" Ref="#PWR?"  Part="1" 
AR Path="/5F992FF7" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 12350 3050 50  0001 C CNN
F 1 "GND" H 12355 3127 50  0000 C CNN
F 2 "" H 12350 3300 50  0001 C CNN
F 3 "" H 12350 3300 50  0001 C CNN
	1    12350 3300
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x04-Connector_Generic J?
U 1 1 5FA08E87
P 12600 4200
AR Path="/5F8C27AF/5FA08E87" Ref="J?"  Part="1" 
AR Path="/5FA08E87" Ref="J104"  Part="1" 
F 0 "J104" H 12500 4400 50  0000 L CNN
F 1 "I2C 5V #1" H 12700 4150 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 12600 4200 50  0001 C CNN
F 3 "~" H 12600 4200 50  0001 C CNN
	1    12600 4200
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FA08E8D
P 12350 4450
AR Path="/5F8C27AF/5FA08E8D" Ref="#PWR?"  Part="1" 
AR Path="/5FA08E8D" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 12350 4200 50  0001 C CNN
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
AR Path="/5FA08E93" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 12300 3900 50  0001 C CNN
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
$Comp
L SIOMv01-rescue:Conn_01x04-Connector_Generic J?
U 1 1 5FA08EA1
P 12600 5150
AR Path="/5F8C27AF/5FA08EA1" Ref="J?"  Part="1" 
AR Path="/5FA08EA1" Ref="J108"  Part="1" 
F 0 "J108" H 12500 5350 50  0000 L CNN
F 1 "I2C 5V #2" H 12700 5100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 12600 5150 50  0001 C CNN
F 3 "~" H 12600 5150 50  0001 C CNN
	1    12600 5150
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FA08EA7
P 12350 5400
AR Path="/5F8C27AF/5FA08EA7" Ref="#PWR?"  Part="1" 
AR Path="/5FA08EA7" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 12350 5150 50  0001 C CNN
F 1 "GND" H 12355 5227 50  0000 C CNN
F 2 "" H 12350 5400 50  0001 C CNN
F 3 "" H 12350 5400 50  0001 C CNN
	1    12350 5400
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+5V-power #PWR?
U 1 1 5FA08EAD
P 12300 5000
AR Path="/5F8C27AF/5FA08EAD" Ref="#PWR?"  Part="1" 
AR Path="/5FA08EAD" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 12300 4850 50  0001 C CNN
F 1 "+5V" H 12315 5173 50  0000 C CNN
F 2 "" H 12300 5000 50  0001 C CNN
F 3 "" H 12300 5000 50  0001 C CNN
	1    12300 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 5000 12300 5150
Wire Wire Line
	12300 5150 12400 5150
Wire Wire Line
	12400 5050 12350 5050
Wire Wire Line
	12350 5050 12350 5400
Wire Wire Line
	12100 4300 12100 4750
Wire Wire Line
	12100 4300 12400 4300
Wire Wire Line
	12100 4750 12000 4750
Wire Wire Line
	12200 4850 12000 4850
Connection ~ 12200 4850
Wire Wire Line
	12200 4850 12200 4400
$Sheet
S 11000 2500 1000 1000
U 5F8C23F2
F0 "ValveCtrl" 50
F1 "ValveCtrl.sch" 50
F2 "ANA_OUT_10V_01" O R 12000 2600 50 
F3 "ANA_OUT_10V_02" O R 12000 3150 50 
F4 "ANA_OUT_01" I L 11000 2950 50 
F5 "ANA_OUT_02" I L 11000 3050 50 
$EndSheet
$Sheet
S 11000 4000 1000 1500
U 5F8C27AF
F0 "I2CInterface" 50
F1 "I2CInterface.sch" 50
F2 "SDA_5V" B R 12000 4750 50 
F3 "SCL_5V" O R 12000 4850 50 
F4 "SCL_AUX" I L 11000 4850 50 
F5 "SDA_AUX" B L 11000 4750 50 
$EndSheet
$Comp
L SIOMv01-rescue:RJ12-Connector J102
U 1 1 5FAF413E
P 3700 3050
AR Path="/5FAF413E" Ref="J102"  Part="1" 
AR Path="/5F8BACBE/5FAF413E" Ref="J?"  Part="1" 
F 0 "J102" H 3700 3500 50  0000 C CNN
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
L SIOMv01-rescue:GND-power #PWR0103
U 1 1 5FAF414A
P 4150 3500
AR Path="/5FAF414A" Ref="#PWR0103"  Part="1" 
AR Path="/5F8BACBE/5FAF414A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 4150 3250 50  0001 C CNN
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
P 3650 4300
AR Path="/5F8C23BC/5FAF15D9" Ref="J?"  Part="1" 
AR Path="/5FAF15D9" Ref="J105"  Part="1" 
F 0 "J105" H 3650 4500 50  0000 C CNN
F 1 "TMP01" H 3900 4300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3650 4300 50  0001 C CNN
F 3 "~" H 3650 4300 50  0001 C CNN
	1    3650 4300
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF15DF
P 3650 4700
AR Path="/5F8C23BC/5FAF15DF" Ref="J?"  Part="1" 
AR Path="/5FAF15DF" Ref="J106"  Part="1" 
F 0 "J106" H 3650 4900 50  0000 C CNN
F 1 "TMP02" H 3900 4700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3650 4700 50  0001 C CNN
F 3 "~" H 3650 4700 50  0001 C CNN
	1    3650 4700
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF15E5
P 3650 5100
AR Path="/5F8C23BC/5FAF15E5" Ref="J?"  Part="1" 
AR Path="/5FAF15E5" Ref="J107"  Part="1" 
F 0 "J107" H 3650 5300 50  0000 C CNN
F 1 "TMP03" H 3900 5100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3650 5100 50  0001 C CNN
F 3 "~" H 3650 5100 50  0001 C CNN
	1    3650 5100
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF15EB
P 3650 5500
AR Path="/5F8C23BC/5FAF15EB" Ref="J?"  Part="1" 
AR Path="/5FAF15EB" Ref="J109"  Part="1" 
F 0 "J109" H 3650 5700 50  0000 C CNN
F 1 "TMP04" H 3900 5500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3650 5500 50  0001 C CNN
F 3 "~" H 3650 5500 50  0001 C CNN
	1    3650 5500
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF15F1
P 3650 5900
AR Path="/5F8C23BC/5FAF15F1" Ref="J?"  Part="1" 
AR Path="/5FAF15F1" Ref="J110"  Part="1" 
F 0 "J110" H 3650 6100 50  0000 C CNN
F 1 "TMP05" H 3900 5900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3650 5900 50  0001 C CNN
F 3 "~" H 3650 5900 50  0001 C CNN
	1    3650 5900
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF15F7
P 3650 6300
AR Path="/5F8C23BC/5FAF15F7" Ref="J?"  Part="1" 
AR Path="/5FAF15F7" Ref="J112"  Part="1" 
F 0 "J112" H 3650 6500 50  0000 C CNN
F 1 "TMP06" H 3900 6300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3650 6300 50  0001 C CNN
F 3 "~" H 3650 6300 50  0001 C CNN
	1    3650 6300
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF15FD
P 3650 6700
AR Path="/5F8C23BC/5FAF15FD" Ref="J?"  Part="1" 
AR Path="/5FAF15FD" Ref="J113"  Part="1" 
F 0 "J113" H 3650 6900 50  0000 C CNN
F 1 "TMP07" H 3900 6700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3650 6700 50  0001 C CNN
F 3 "~" H 3650 6700 50  0001 C CNN
	1    3650 6700
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FAF1603
P 3650 7100
AR Path="/5F8C23BC/5FAF1603" Ref="J?"  Part="1" 
AR Path="/5FAF1603" Ref="J114"  Part="1" 
F 0 "J114" H 3650 7300 50  0000 C CNN
F 1 "TMP08" H 3900 7100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3650 7100 50  0001 C CNN
F 3 "~" H 3650 7100 50  0001 C CNN
	1    3650 7100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3850 4400 3900 4400
Wire Wire Line
	3850 5600 3900 5600
Wire Wire Line
	3850 5200 3900 5200
Connection ~ 3900 5200
Wire Wire Line
	3900 5200 3900 5600
Wire Wire Line
	3900 4400 3900 4800
Wire Wire Line
	3850 4800 3900 4800
Connection ~ 3900 4800
Wire Wire Line
	3900 4800 3900 5200
Wire Wire Line
	3850 5400 3950 5400
Wire Wire Line
	3950 4100 3950 4200
Wire Wire Line
	3850 4200 3950 4200
Connection ~ 3950 4200
Wire Wire Line
	3950 4200 3950 4600
Wire Wire Line
	3850 4600 3950 4600
Connection ~ 3950 4600
Wire Wire Line
	3950 4600 3950 5000
Wire Wire Line
	3850 5000 3950 5000
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
Wire Wire Line
	3850 6000 3900 6000
Wire Wire Line
	3850 7200 3900 7200
Connection ~ 3900 7200
Wire Wire Line
	3900 7200 3900 7250
Wire Wire Line
	3850 6800 3900 6800
Connection ~ 3900 6800
Wire Wire Line
	3900 6800 3900 7200
Wire Wire Line
	3900 6000 3900 6400
Wire Wire Line
	3850 6400 3900 6400
Connection ~ 3900 6400
Wire Wire Line
	3900 6400 3900 6800
Wire Wire Line
	3850 7000 3950 7000
Wire Wire Line
	3850 5800 3950 5800
Wire Wire Line
	3950 5800 3950 6200
Wire Wire Line
	3850 6200 3950 6200
Connection ~ 3950 6200
Wire Wire Line
	3950 6200 3950 6600
Wire Wire Line
	3850 6600 3950 6600
Connection ~ 3950 6600
Wire Wire Line
	3950 6600 3950 7000
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FAF164F
P 3900 7250
AR Path="/5F8C23BC/5FAF164F" Ref="#PWR?"  Part="1" 
AR Path="/5FAF164F" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 3900 7000 50  0001 C CNN
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
	3850 4300 4500 4300
Wire Wire Line
	3850 5100 4500 5100
Wire Wire Line
	3850 5500 4500 5500
Wire Wire Line
	3850 5900 4500 5900
Wire Wire Line
	3850 6300 4500 6300
Wire Wire Line
	3850 6700 4500 6700
Wire Wire Line
	3850 7100 4500 7100
$Sheet
S 11000 6000 1000 3000
U 5FB9434D
F0 "ExpansionBoard" 50
F1 "Expansion board.sch" 50
F2 "V_OUT" O R 12000 6250 50 
F3 "I_OUT" O R 12000 6350 50 
F4 "RS485_RX_A" I R 12000 7450 50 
F5 "RS485_RX_B" I R 12000 7550 50 
F6 "RS485_TX_A" I R 12000 7250 50 
F7 "RS485_TX_B" I R 12000 7350 50 
F8 "TXD" O R 12000 7050 50 
F9 "RXD" I R 12000 7150 50 
F10 "HEATER" O R 12000 8550 50 
F11 "SPI_CS_HP" I L 11000 7150 50 
F12 "SPI_MOSI" I L 11000 7250 50 
F13 "SPI_MISO" O L 11000 7350 50 
F14 "SPI_SCLK" I L 11000 7450 50 
F15 "INT_HP" O L 11000 7550 50 
F16 "ANA_OUT_HP" I L 11000 6300 50 
F17 "BOILER" I L 11000 8550 50 
$EndSheet
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FBFA637
P 3650 8250
AR Path="/5F8C23BC/5FBFA637" Ref="J?"  Part="1" 
AR Path="/5FBFA637" Ref="J116"  Part="1" 
F 0 "J116" H 3650 8450 50  0000 C CNN
F 1 "FLOW01" H 3900 8250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3650 8250 50  0001 C CNN
F 3 "~" H 3650 8250 50  0001 C CNN
	1    3650 8250
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Conn_01x03-Connector_Generic J?
U 1 1 5FBFA63D
P 3650 8650
AR Path="/5F8C23BC/5FBFA63D" Ref="J?"  Part="1" 
AR Path="/5FBFA63D" Ref="J118"  Part="1" 
F 0 "J118" H 3650 8850 50  0000 C CNN
F 1 "FLOW02" H 3900 8650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3650 8650 50  0001 C CNN
F 3 "~" H 3650 8650 50  0001 C CNN
	1    3650 8650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3850 8750 3900 8750
Connection ~ 3900 8750
Wire Wire Line
	3900 8750 3900 8800
Wire Wire Line
	3850 8350 3900 8350
Wire Wire Line
	3900 8350 3900 8750
Wire Wire Line
	3850 8550 3950 8550
Wire Wire Line
	3950 8100 3950 8150
Wire Wire Line
	3850 8150 3950 8150
Connection ~ 3950 8150
Wire Wire Line
	3950 8150 3950 8550
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FBFA64F
P 3900 8800
AR Path="/5F8C23BC/5FBFA64F" Ref="#PWR?"  Part="1" 
AR Path="/5FBFA64F" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 3900 8550 50  0001 C CNN
F 1 "GND" H 3905 8627 50  0000 C CNN
F 2 "" H 3900 8800 50  0001 C CNN
F 3 "" H 3900 8800 50  0001 C CNN
	1    3900 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 8250 4500 8250
Wire Wire Line
	3850 8650 4500 8650
Text Notes 13500 8550 0    50   ~ 0
Electrical heater ouput via SSR
Text Notes 13500 7450 0    50   ~ 0
RS485/RS232/RS422
$Comp
L SIOMv01-rescue:+24V-power #PWR0113
U 1 1 5FC305FF
P 3950 8100
F 0 "#PWR0113" H 3950 7950 50  0001 C CNN
F 1 "+24V" H 3965 8273 50  0000 C CNN
F 2 "" H 3950 8100 50  0001 C CNN
F 3 "" H 3950 8100 50  0001 C CNN
	1    3950 8100
	1    0    0    -1  
$EndComp
Text Notes 13500 2750 0    50   ~ 0
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
P 12350 6500
AR Path="/5F8C23F2/5FCDABAE" Ref="#PWR?"  Part="1" 
AR Path="/5FCDABAE" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 12350 6250 50  0001 C CNN
F 1 "GND" H 12355 6327 50  0000 C CNN
F 2 "" H 12350 6500 50  0001 C CNN
F 3 "" H 12350 6500 50  0001 C CNN
	1    12350 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12350 6450 12350 6500
Wire Wire Line
	12400 6450 12350 6450
$Comp
L SIOMv01-rescue:Conn_01x04-Connector_Generic J?
U 1 1 5FCDABA4
P 12600 6250
AR Path="/5F8C23F2/5FCDABA4" Ref="J?"  Part="1" 
AR Path="/5FCDABA4" Ref="J111"  Part="1" 
F 0 "J111" H 12500 6450 50  0000 L CNN
F 1 "AnaOut Heatpump" H 12700 6250 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 12600 6250 50  0001 C CNN
F 3 "~" H 12600 6250 50  0001 C CNN
	1    12600 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 6250 12400 6250
Wire Wire Line
	12400 6350 12000 6350
Wire Wire Line
	12000 2600 12400 2600
Wire Wire Line
	12000 3150 12400 3150
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 600122F7
P 12350 7700
AR Path="/5F8C23F2/600122F7" Ref="#PWR?"  Part="1" 
AR Path="/600122F7" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 12350 7450 50  0001 C CNN
F 1 "GND" H 12355 7527 50  0000 C CNN
F 2 "" H 12350 7700 50  0001 C CNN
F 3 "" H 12350 7700 50  0001 C CNN
	1    12350 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12350 7650 12350 7700
Wire Wire Line
	12400 7650 12350 7650
Wire Wire Line
	12000 7250 12400 7250
Wire Wire Line
	12400 7350 12000 7350
Wire Wire Line
	12000 7450 12400 7450
Wire Wire Line
	12400 7550 12000 7550
Wire Wire Line
	3850 4700 4500 4700
$Comp
L SIOMv01-rescue:+24V-power #PWR0109
U 1 1 5FE2CB03
P 12350 6100
F 0 "#PWR0109" H 12350 5950 50  0001 C CNN
F 1 "+24V" H 12365 6273 50  0000 C CNN
F 2 "" H 12350 6100 50  0001 C CNN
F 3 "" H 12350 6100 50  0001 C CNN
	1    12350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	12350 6100 12350 6150
Wire Wire Line
	12350 6150 12400 6150
$Comp
L SIOMv01-rescue:Conn_01x02-Connector_Generic J?
U 1 1 600B1B60
P 12600 8450
AR Path="/5F8C23F2/600B1B60" Ref="J?"  Part="1" 
AR Path="/600B1B60" Ref="J117"  Part="1" 
F 0 "J117" H 12550 8550 50  0000 L CNN
F 1 "Boiler Heater" H 12700 8400 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 12600 8450 50  0001 C CNN
F 3 "~" H 12600 8450 50  0001 C CNN
	1    12600 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 8550 12400 8550
$Comp
L SIOMv01-rescue:+24V-power #PWR0114
U 1 1 600B1B68
P 12350 8400
F 0 "#PWR0114" H 12350 8250 50  0001 C CNN
F 1 "+24V" H 12365 8573 50  0000 C CNN
F 2 "" H 12350 8400 50  0001 C CNN
F 3 "" H 12350 8400 50  0001 C CNN
	1    12350 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12350 8400 12350 8450
Wire Wire Line
	12350 8450 12400 8450
Wire Wire Line
	12000 7150 12400 7150
Wire Wire Line
	12400 7050 12000 7050
Text Notes 13500 6350 0    50   ~ 0
Analog output: 0..10V, 0..20mA
$Comp
L Connector_Generic:Conn_01x07 J?
U 1 1 600122FF
P 12600 7350
AR Path="/5F8C23F2/600122FF" Ref="J?"  Part="1" 
AR Path="/600122FF" Ref="J115"  Part="1" 
F 0 "J115" H 12500 7750 50  0000 L CNN
F 1 "Serial Heatpump" H 12700 7350 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 12600 7350 50  0001 C CNN
F 3 "~" H 12600 7350 50  0001 C CNN
	1    12600 7350
	1    0    0    -1  
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
	5500 2800 6000 2800
Wire Wire Line
	6000 2900 5500 2900
Wire Wire Line
	5500 3000 6000 3000
Wire Wire Line
	6000 3100 5500 3100
Wire Wire Line
	5500 3200 6000 3200
Wire Wire Line
	6000 8400 5500 8400
Wire Wire Line
	5500 8500 6000 8500
Wire Wire Line
	6000 5650 5500 5650
Wire Wire Line
	5500 5750 6000 5750
Wire Wire Line
	10500 2950 11000 2950
Wire Wire Line
	10500 3050 11000 3050
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
F2 "SPI_CS_P1" O L 6000 2800 50 
F3 "SPI_MOSI_P1" O L 6000 2900 50 
F4 "SPI_MISO_P1" I L 6000 3000 50 
F5 "SPI_SCLK_P1" O L 6000 3100 50 
F6 "INT_P1" I L 6000 3200 50 
F7 "FLOW_IN_01" I L 6000 8400 50 
F8 "FLOW_IN_02" I L 6000 8500 50 
F9 "SCL_TS" O L 6000 5750 50 
F10 "SDA_TS" B L 6000 5650 50 
F11 "ANA_OUT_01" O R 10500 2950 50 
F12 "ANA_OUT_02" O R 10500 3050 50 
F13 "SCL_AUX" O R 10500 4850 50 
F14 "SDA_AUX" B R 10500 4750 50 
F15 "SPI_CS_HP" O R 10500 7150 50 
F16 "SPI_MOSI_HP" O R 10500 7250 50 
F17 "SPI_MISO_HP" I R 10500 7350 50 
F18 "SPI_SCLK_HP" O R 10500 7450 50 
F19 "INT_HP" I R 10500 7550 50 
F20 "BOILER" O R 10500 8550 50 
F21 "ANA_OUT_HP" O R 10500 6300 50 
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
Wire Wire Line
	12200 5350 12400 5350
Wire Wire Line
	12200 4850 12200 5350
Wire Wire Line
	12400 5250 12100 5250
Wire Wire Line
	12100 5250 12100 4750
Connection ~ 12100 4750
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
P 7550 10600
AR Path="/5F8C23BC/60053F3B" Ref="#PWR?"  Part="1" 
AR Path="/60053F3B" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 7550 10350 50  0001 C CNN
F 1 "GND" H 7555 10427 50  0000 C CNN
F 2 "" H 7550 10600 50  0001 C CNN
F 3 "" H 7550 10600 50  0001 C CNN
	1    7550 10600
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 60054512
P 8500 10600
AR Path="/5F8C23BC/60054512" Ref="#PWR?"  Part="1" 
AR Path="/60054512" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 8500 10350 50  0001 C CNN
F 1 "GND" H 8505 10427 50  0000 C CNN
F 2 "" H 8500 10600 50  0001 C CNN
F 3 "" H 8500 10600 50  0001 C CNN
	1    8500 10600
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 60054741
P 9450 10600
AR Path="/5F8C23BC/60054741" Ref="#PWR?"  Part="1" 
AR Path="/60054741" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 9450 10350 50  0001 C CNN
F 1 "GND" H 9455 10427 50  0000 C CNN
F 2 "" H 9450 10600 50  0001 C CNN
F 3 "" H 9450 10600 50  0001 C CNN
	1    9450 10600
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 600549C7
P 10400 10600
AR Path="/5F8C23BC/600549C7" Ref="#PWR?"  Part="1" 
AR Path="/600549C7" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 10400 10350 50  0001 C CNN
F 1 "GND" H 10405 10427 50  0000 C CNN
F 2 "" H 10400 10600 50  0001 C CNN
F 3 "" H 10400 10600 50  0001 C CNN
	1    10400 10600
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
$EndSCHEMATC
