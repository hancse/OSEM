# https://mntolia.com/mqtt-python-with-paho-mqtt-client/

import paho.mqtt.client as mqtt

broker_url = "mqtt.eclipse.org"
broker_port = 1883

def on_connect(client, userdata, flags, rc):
   print("Connected With Result Code: {}".format(rc))


def on_message(client, userdata, message):
   print("Message Received from others: "+message.payload.decode())


def on_message_from_kitchen(client, userdata, message):
    print("Message Received from Kitchen: " + message.payload.decode())


def on_message_from_bedroom(client, userdata, message):
    print("Message Received from Bedroom: " + message.payload.decode())


def on_disconnect(client, userdata, rc):
   print("Client Got Disconnected")

# You can attach multiple client objects to a single callback function.
# This is useful when your program connects to multiple brokers.

# Establishing Connection To a MQTT Broker
client = mqtt.Client()
client.on_connect = on_connect()
# to process every other message
client.on_message = on_message()
client.connect(broker_url, broker_port)

# To subscribe to a topic we need the subscribe() function. The function takes 2 parameters
client.subscribe("testing_topic", qos=1)
client.subscribe("kitchen_topic", qos=1)
client.subscribe("bedroom_topic", qos=1)
#     Note: If you want the client to subscribe to multiple topics then you can put them in a list of tuples.
#     Example: client.subscribe([(‘topicName1’, 1),(‘topicName2’, 1)])
#     The format of the tuple is [(Topic Name, QoS Level)]
client.message_callback_add("kitchen_topic", on_message_from_kitchen)
client.message_callback_add("bedroom_topic", on_message_from_bedroom())

# To publish a message we use the publish() function. The function takes 4 parameters:
client.publish(topic="testing_topic", payload="testing_payload", qos=1, retain=False)

client.loop_forever()  # blocking

#client.loop_start()     # nonblocking
#Some Executable Code Here
#client.loop_stop()
#Client Loop Stops After loop_stop() is called