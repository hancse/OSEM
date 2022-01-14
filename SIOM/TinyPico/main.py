import micropython
import utime
from machine import Pin, I2C, reset
import I2cCommunication
import systemMemory
import mqttCommunication
import json

_OUTPUT_DATA_TIMER = 1000

# topic name, name of memory element, minimum value, maximum value
subscribed_topics = [
    ("valve1", "valve_1", 0, 100),
    ("valve2", "valve_2", 0, 100),
    ("boiler", "expansionBoardAnalogOutput", 0, 100),
    ("heatpump", "expansionBoardHeaterOutput", 0, 1),
]

# topic name, name of memory element, name in json
published_topics = [
    ("temp1", "temperature_1", "temp1"),
    ("temp2", "temperature_2", "temp2"),
    ("temp3", "temperature_3", "temp3"),
    ("temp4", "temperature_4", "temp4"),
    ("temp5", "temperature_5", "temp5"),
    ("temp6", "temperature_6", "temp6"),
    ("temp7", "temperature_7", "temp7"),
    ("temp8", "temperature_8", "temp8"),
    ("flow1", "flowInput1Frequency", "flow1"),
    ("flow2", "flowInput2Frequency", "flow2"),
    ("analogstate1", "valve_1", "analogstate1"),
    ("analogstate2", "valve_2", "analogstate2"),
    ("heatpumpstate", "expansionBoardHeaterOutput", "heatpumpstate"),
    ("boilerstate", "expansionBoardAnalogOutput", "boilerstate"),
]


def powerFeedbackcallback(p):
    mqtt.closeConnection()
    print("[INTERRUPT] Power feedback fail >> shutdown")
    utime.sleep(10)
    reset()


def transmit_input_values(mqtt_instance, topics, variables, names):
    for topic in topics:
        variable = variables[topics.index(topic)]
        name = names[topics.index(topic)]
        variable_name = getattr(memory, variable, "temperature_1")
        outString = name + str(variable_name)
        mqtt_instance.writeMqtt(topic, str(outString))
    return


utime.sleep_ms(1000)  # Allow for power stabilisation
print("Memory Info - micropython.mem_info()")
print("------------------------------------")
micropython.mem_info()

# Init I2c
i2c = I2C(sda=Pin(21), scl=Pin(22))  # Correct I2C pins for TinyPICO
mcuDeviceAddress = 0x20
print('Scan i2c bus...')
devices = i2c.scan()

deviceFound = 0
if len(devices) == 0:
    print("No i2c device !")
    deviceFound = 0
else:
    print("i2c devices found: ", len(devices))

    for device in devices:
        print("Decimal address: ", device, " | Hex address: ", hex(device))
        if device == mcuDeviceAddress:
            deviceFound = 1
            print("Target device found !")

mcu = I2cCommunication.McuCommunication(i2c)
loopTimer = 0
memory = systemMemory.SystemIO()
mqtt = mqttCommunication.MqttCommunication()
mqttSetup = mqtt.initiateConnection()

pub_topics, pub_variables, pub_names = zip(*published_topics)

for topic in pub_topics:
    mqtt.publishToTopic(topic)

sub_topics, sub_variables, sub_min, sub_max = zip(*subscribed_topics)

for topic in sub_topics:
    mqtt.subscribeToTopic(topic)

if mqttSetup == -1:
    print("Failed to initiate MQTT connection. Restarting...")
    utime.sleep(10)
    reset()

memory.temperature_1 = 0
memory.temperature_2 = 0
memory.temperature_3 = 0
memory.temperature_4 = 0
memory.temperature_5 = 0
memory.temperature_6 = 0
memory.temperature_7 = 0
memory.temperature_8 = 0
memory.flowInput1Frequency = 0
memory.flowInput2Frequency = 0
memory.valve_1 = 0
memory.valve_2 = 0
memory.expansionBoardAnalogOutput = 0
memory.expansionBoardHeaterOutput = 0

# create an input pin on pin #25, with a pull up resistor
powerFeedback = Pin(25, Pin.IN, Pin.PULL_UP)
powerFeedback.irq(trigger=Pin.IRQ_FALLING, handler=powerFeedbackcallback)
transmit_input_values(mqtt, pub_topics, pub_variables, pub_names)
# Loop
while True:
    if deviceFound == 1:
        # do stuff
        if utime.ticks_ms() > (loopTimer + _OUTPUT_DATA_TIMER):
            mcuData = mcu.ReadMcuOutputData()
            # 0 = temperature 1
            # 1 = temperature 2
            # 2 = temperature 3
            # 4 = temperature 4
            # 5 = temperature 5
            # 6 = temperature 6
            # 7 = temperature 7
            # 8 = temperature 8
            # 9 & 10 = flow input 1 frequency
            # 11 & 12 = flow input 2 frequency
            memory.temperature_1 = (mcuData[0] - 55)
            memory.temperature_2 = (mcuData[1] - 55)
            memory.temperature_3 = (mcuData[2] - 55)
            memory.temperature_4 = (mcuData[3] - 55)
            memory.temperature_5 = (mcuData[4] - 55)
            memory.temperature_6 = (mcuData[5] - 55)
            memory.temperature_7 = (mcuData[6] - 55)
            memory.temperature_8 = (mcuData[7] - 55)
            memory.flowInput1Frequency = (mcuData[8] << 8)
            memory.flowInput1Frequency += mcuData[9]
            memory.flowInput2Frequency = (mcuData[10] << 8)
            memory.flowInput2Frequency += mcuData[11]

            transmit_input_values(mqtt, pub_topics, pub_variables, pub_names)
            loopTimer = utime.ticks_ms()
        else:
            if mqtt.subscribedDataAvailable() == 1:
                mqttData = mqtt.getSubscribedData()
                print("new MQTT message: " + mqttData)
                try:
                    for topic in sub_topics:
                        if topic in mqttData:
                            length = len(topic)
                            stringvalue = mqttData[length:len(mqttData)]
                            print("Topic value: " + stringvalue)
                            value = int(stringvalue)
                            minimum = sub_min[sub_topics.index(topic)]
                            maximum = sub_max[sub_topics.index(topic)]
                            if value > maximum:
                                value = maximum
                            elif value < minimum:
                                value = minimum
                            variable = sub_variables[sub_topics.index(topic)]
                            variable_name = getattr(memory, variable, "valve_1")

                            if variable_name != value:
                                if topic == "valve1":
                                    memory.valve_1 = value
                                elif topic == "valve2":
                                    memory.valve_2 = value
                                elif topic == "boiler":
                                    memory.expansionBoardAnalogOutput = value
                                elif topic == "heatpump":
                                    memory.expansionBoardHeaterOutput = value

                                print("Valve 1: " + str(memory.valve_1))
                                print("Valve 2: " + str(memory.valve_2))
                                print("Boiler: " + str(memory.expansionBoardAnalogOutput))
                                print("Heater: " + str(memory.expansionBoardHeaterOutput))
                                mcu.WriteMcuInputData(
                                    str(chr(memory.expansionBoardAnalogOutput) + chr(
                                        memory.expansionBoardHeaterOutput) + chr(memory.valve_1) + chr(
                                        memory.valve_2)))
                except:
                    continue

        # Small delay to keep things responsive but give time for interrupt processing.
        utime.sleep_ms(100)
