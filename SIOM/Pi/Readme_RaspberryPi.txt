Starting point >> Clean install from NOOBS v3.5 build 'SEP 19 2020'
- Install Raspberry PI OS FULL (32-bit)
	- Set location and langauge settings (IMPORTANT FOR WIFI ACCESS POINT) >> 'country_code' variable is entered via this settings

After installation is complete
- Execute system update and upgrade
	- Execute the following command vai terminal "Sudo apt-get update"
	- Execute the following command vai terminal "Sudo apt-get upgrade"

- Install mosquitto
	- Execute the following command vai terminal "Sudo apt-get install mosquitto"

The following is optional >> only neccesary if you want to use the test application:
<TEST APPLICATION>
- Install Paho client 
	- pip3 install paho-mqtt python-etcd
</TEST APPLICATION>

- Setup Wifi access point:
	- follow the instructions from this manual: https://www.raspberrypi.org/documentation/configuration/wireless/access-point-routed.md
	- By default the SIOM_module connects to the following network (this can be edited by editing the "/etc/hostapd/hostapd.conf" file) :
		- Ssid = "SIOM_network"						(without quotes)
        	- Password = "[q<9LGSy4["					(without quotes)
	- Make sure the host ip address is set to: "192.168.4.1"		(without quotes)
