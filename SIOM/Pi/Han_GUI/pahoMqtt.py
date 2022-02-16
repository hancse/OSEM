import paho.mqtt.client as mqtt


class pahoMqttCommunication:
    def __init__(self):
        self.mqtt_server = "192.168.4.1"
        self.client_id = "python1"
        self.topics_subscribed = []
        self.topics_published = []
        self.lastMessage = ""
        self.dataAvailable = 0
        self.connectionStatus = 0
        self.client = mqtt.Client(self.client_id)

    def appendTopics(self, topic):
        self.topics_subscribed.append(topic)
        print("Subscribed to " + topic)

    def subscribeToTopics(self):
        for topic in self.topics_subscribed:
            self.client.subscribe(topic, 0)


    def publishToTopic(self, topic):
        self.topics_published.append(topic)
        print("Publish to " + topic)

    def subscribedCallback(self, topic, msg):
        print((str(topic) + str(msg)))
        if topic.decode() in self.topics_subscribed:
            #print("Received message: " + msg.decode())

            self.lastMessage = msg.decode()
            self.dataAvailable = 1
        else:
            print("else state")

    def on_message(self, client, userdata, message):
        #print("Received message: ", str(message.payload.decode("utf-8")))
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
        self.client.on_message = self.on_message
        self.client.connect(self.mqtt_server)

        print("Connected to %s MQTT broker, " % self.mqtt_server)
        self.connectionStatus = 1
        return 0

    def closeConnection(self):
        self.connectionStatus = 0

    def writeMqtt(self, topic, message):
        if self.connectionStatus == 1:
            self.client.publish(topic, message)
            print(message)
        else:
            print("No connection")
