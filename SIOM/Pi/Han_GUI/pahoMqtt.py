import paho.mqtt.client as mqtt

class pahoMqttCommunication:
    def __init__(self):
        self.mqtt_server = "192.168.4.1"
        self.client_id = "python1"
        self.topic_subscribe = "mosquitto_pub"
        self.topic_publish = "mosquitto_sub"
        self.lastMessage = ""
        self.dataAvailable = 0
        self.connectionStatus = 0
        self.client = mqtt.Client(self.client_id)

    def subscribedCallback(self, topic, msg):
        print((str(topic) + str(msg)))
        if topic.decode() == self.topic_subscribe:
            print("Received message: " + msg.decode())
            self.lastMessage = msg.decode()
            self.dataAvailable = 1
        else:
            print("else state")
            
    def on_message(self, client, userdata, message):
        print("Received message: ", str(message.payload.decode("utf-8")))
        self.lastMessage = str(message.payload.decode("utf-8"))
        self.dataAvailable = 1

    def subscribedDataAvailable(self):
        if self.connectionStatus == 1:
            self.client.loop(1.0)
            return self.dataAvailable

    def getSubscribedData(self):
        self.dataAvailable = 0
        return self.lastMessage

    def initiateConnection(self):
        self.client.on_message=self.on_message
        self.client.connect(self.mqtt_server)
        self.client.subscribe(self.topic_subscribe)
        print("Connected to %s MQTT broker, " % self.mqtt_server)
        print("subscribed to %s topic" % self.topic_subscribe)
        self.connectionStatus = 1
        return 0

    def closeConnection(self):
        self.connectionStatus = 0

    def writeMqtt(self, message):
        if self.connectionStatus == 1:
            self.client.publish(self.topic_publish, message)

