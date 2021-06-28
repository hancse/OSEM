import utime

from umqttsimple import MQTTClient
import machine
import ubinascii
import gc
import network
import esp

esp.osdebug(None)
gc.collect()


class MqttCommunication:
    def __init__(self):
        ap_if = network.WLAN(network.AP_IF)
        ap_if.active(False)
        self.station = network.WLAN(network.STA_IF)
        self.ssid = "SIOM_network"
        self.password = "[q<9LGSy4["
        self.mqtt_server = "192.168.4.1"
        self.client_id = ubinascii.hexlify(machine.unique_id())
        self.topic_subscribe = "mosquitto_sub"
        self.topic_publish = "mosquitto_pub"
        self.lastMessage = ""
        self.dataAvailable = 0
        self.client = MQTTClient(self.client_id, self.mqtt_server, port=1883)
        self.connectionStatus = 0

    def subscribedCallback(self, topic, msg):
        print((str(topic) + str(msg)))
        print(self.topic_subscribe)
        if topic.decode() == self.topic_subscribe:
            print("Received message: " + msg.decode())
            self.lastMessage = msg.decode()
            self.dataAvailable = 1
        else:
            print("else state")

    def subscribedDataAvailable(self):
        if self.connectionStatus == 1:
            self.client.check_msg()
        return self.dataAvailable

    def getSubscribedData(self):
        self.dataAvailable = 0
        return self.lastMessage

    def initiateConnection(self):
        # WiFi connection
        self.station.active(True)
        if not self.station.isconnected():
            print("Connect to network: " + self.ssid + " password " + self.password)
            self.station.connect(self.ssid, self.password)
            while not self.station.isconnected():
                pass

            else:
                print("Connected to " + self.ssid + " network over WiFi")
        else:
            print("Connected to " + self.ssid + " network over WiFi")

        self.client.set_callback(self.subscribedCallback)
        self.client.connect()
        print("subscribing to: " + self.topic_subscribe)
        self.client.subscribe(self.topic_subscribe)
        print("Connected to %s MQTT broker, " % self.mqtt_server)
        print("subscribed to %s topic" % self.topic_subscribe)
        self.connectionStatus = 1
        return 0

    def closeConnection(self):
        self.connectionStatus = 0
        self.station.disconnect()

    def writeMqtt(self, message):
        if self.connectionStatus == 1:
            self.client.publish(self.topic_publish, message)
