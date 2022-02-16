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
        self.topics_subscribed = []
        self.topics_published = []
        self.lastMessage = ""
        self.dataAvailable = 0
        self.client = MQTTClient(self.client_id, self.mqtt_server, port=1883)
        self.connectionStatus = 0

    def subscribeToTopic(self, topic):
        self.topics_subscribed.append(topic)
        self.client.subscribe(topic, 0)
        print("Subscribed to " + topic)

    def publishToTopic(self, topic):
        self.topics_published.append(topic)
        print("Publish to " + topic)

    def subscribedCallback(self, topic, msg):
        print("Received message: " + (str(topic, "utf-8") + str(msg, "utf-8")))
        for topic_ in self.topics_subscribed:
            if str(topic, "utf-8") == topic_:
                self.lastMessage = (str(topic, "utf-8") + str(msg, "utf-8"))
                self.dataAvailable = 1


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

        self.connectionStatus = 1
        return 0

    def closeConnection(self):
        self.connectionStatus = 0
        self.station.disconnect()

    def writeMqtt(self,topic, message):
        if self.connectionStatus == 1:

            self.client.publish(topic, message)
