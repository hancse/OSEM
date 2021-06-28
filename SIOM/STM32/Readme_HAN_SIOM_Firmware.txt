This project was made in editor: "System workbench for STM32" in combination with STM32CubeMX V6.1.2

In order to run the project import project via "File >> Import >> general >> Existing projects into workspace" and select the .cproject file
When settings are changed in cubeMx generate the file with basic application structure + SW4STM32 Toolchain

By default the STM controller program connector is also the debug UART output connector, this is particularly handy when using the STLink V3 programmer as 1 connector is used for programming and debug UART.
The connector used is the standard STLink V3 connector which comes with the STLink V3.

The system Debug output can be changed by editing the "systemInit" function in the main.c file >> the given UART handle refers to the debug output
	Should any error occur this will be outputted via the debug uart, the default settings are:
	- Baudrate = 115200
	- Data bibts: 8
	- parity bits: None
	- Stop bits: 1
This can be opened by any standard communication terminal program (Putty, tera term, Realterm etc.)

System important settings (such as definitons and addresses)and structure are defined in the 'SystemDefinitons.h/.c' files

The MCU communicate with the TinyPcio via I2c where the TinyPco sets the MCU's output via output register and the MCU pushes the measurement data 
every second to the TinyPico via the input register
I2C specific addresses and registers are listed below
- MCU I2C address = 0x20 (7 bits)
- Register map:
	- REG_INPUT = 0x00		input register	
		Data format (4 bytes)
			1.	Expansion board analog output (value 0-100)
			2.	Expansion board Heater output (Boiler) (value 0-1)
			3.	Valve 1 (value 0-100)
			4.	Valve 2 (value 0-100)

	- REG_OUTPUT = 0x01		output register
		Data format (12 bytes)
			1.	Temperature sensor 1 (Valid value -55 - 125) >> 1 byte (value is send as uint8 >> value is always +55 degrees)
			2.	Temperature sensor 2 (Valid value -55 - 125) >> 1 byte (value is send as uint8 >> value is always +55 degrees)
			3.	Temperature sensor 3 Valid value -55 - 125) >> 1 byte (value is send as uint8 >> value is always +55 degrees)
			4.	Temperature sensor 4 Valid value -55 - 125) >> 1 byte (value is send as uint8 >> value is always +55 degrees)
			5.	Temperature sensor 5 Valid value -55 - 125) >> 1 byte (value is send as uint8 >> value is always +55 degrees)
			6.	Temperature sensor 6 Valid value -55 - 125) >> 1 byte (value is send as uint8 >> value is always +55 degrees)
			7.	Temperature sensor 7 Valid value -55 - 125) >> 1 byte (value is send as uint8 >> value is always +55 degrees)
			8.	Temperature sensor 8 Valid value -55 - 125) >> 1 byte (value is send as uint8 >> value is always +55 degrees)
			9.	Flow input 1 frequency (value 0-1000Hz) >> send as 2 bytes (16 bit value split >> first byte >> (0xFFFF & 0xFF00) >> 8)
			10.	Flow input 2 frequency (value 0-1000Hz) >> send as 2 bytes (16 bit value split >> last byte >> 0xFFFF & 0x00FF )
