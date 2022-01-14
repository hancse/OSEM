This project was made in editor: "Mu" >> can be downloaded here: https://codewith.mu/en/

The system Debug output is outputted via a com port which becomes available after plugging in the micro usb connector in the TinyPico
	The default settings are:
	- Baudrate = 115200
	- Data bibts: 8
	- parity bits: None
	- Stop bits: 1
This can be opened by any standard communication terminal program (Putty, tera term, Realterm etc.)

At bootup the TinyPico searches the I2C bus for the MCU host controller, in case this is not found the device will not output data to the server.
By default the TinyPico connects to a host raspberry pi hosting a mosquitto server, with the following settings.
	Ssid = "SIOM_network"
        Password = "[q<9LGSy4["
        Mqtt_server = "192.168.4.1"

These settings can be found in the 'mqttCommunication.py' file.

By default the TinyPico will publish the measurement data every second when a connection is made with the MQTT server.
The Mqtt connection is made up of 2 topics, one for the SIOM server to send to the SIOM modules and 1 for the SIOM modules to push data to the SIOM server
These topics are the following:
- The SIOM modules receive output data on the 'mosquitto_sub' topic.
- The SIOM modules push measurement data on the 'mosquitto_pub' topic.

The TinyPcio communicatie with the Raspberry Pi via 2 topics, data send over these topics holds the following structure:

TinyPico input data (From Raspberry Pi to TinyPcio) >> Receive on interrupt base
Data layout exampls:
heatpump1
Topic value: 1
 
valve22
Topic value: 2
 
valve22
Topic value: 2
 
valve13
Topic value: 3



TinyPico output data (From TinyPico to Raspberry Pi) >> Send every second as poll function
Data layout exampls:
temp17
Topic value: 7
 
temp25
Topic value: 5
 
temp33
Topic value: 3
 
temp49
Topic value: 9
 
temp56
Topic value: 6
 
temp61
Topic value: 1
 
temp75
Topic value: 5
 
temp88
Topic value: 8
 
flow10
Topic value: 0
 
flow21
Topic value: 1
 
analogstate19
Topic value: 9
 
analogstate29
Topic value: 9
 
Heatpumpstate2
Topic value: 2
 
Boilerstate3
Topic value: 3
 
All topics are fully lowercase
