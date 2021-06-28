import micropython
import utime
from machine import Pin, I2C, reset
import I2cCommunication
import systemMemory
import mqttCommunication
import json

_OUTPUT_DATA_TIMER = 1000


def powerFeedbackcallback(p):
    mqtt.closeConnection()
    print("[INTERRUPT] Power feedback fail >> shutdown")
    utime.sleep(10)
    reset()


def transmit_input_values():
    outData = {
        "UnitStatus": "OK",
        "LogMsg": "",
        "P1Msg": "",
        "TempSensor01": memory.temperature_1,
        "TempSensor02": memory.temperature_2,
        "TempSensor03": memory.temperature_3,
        "TempSensor04": memory.temperature_4,
        "TempSensor05": memory.temperature_5,
        "TempSensor06": memory.temperature_6,
        "TempSensor07": memory.temperature_7,
        "TempSensor08": memory.temperature_8,
        "FlowSensor01": memory.flowInput1Frequency,
        "FlowSensor02": memory.flowInput2Frequency,
        "AnaStatus01": memory.valve_1,
        "AnaStatus02": memory.valve_2,
        "HeatpumpOut": memory.expansionBoardAnalogOutput,
        "BoilerStatus": memory.expansionBoardHeaterOutput,
    }
    mqtt.writeMqtt(json.dumps(outData))
    print("Published new data")
    return


utime.sleep_ms(1000)  # Allow for power stabilisation
print("Hello world >> code fom Richard's PC")
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

# create an input pin on pin #25, with a pull up resistor
powerFeedback = Pin(25, Pin.IN, Pin.PULL_UP)
powerFeedback.irq(trigger=Pin.IRQ_FALLING, handler=powerFeedbackcallback)

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

            print("new MCU data >> \r\ntemp 1: " + str(memory.temperature_1)
                  + "\r\ntemp 2: " + str(memory.temperature_2)
                  + "\r\ntemp 3: " + str(memory.temperature_3)
                  + "\r\ntemp 4: " + str(memory.temperature_4)
                  + "\r\ntemp 5: " + str(memory.temperature_5)
                  + "\r\ntemp 6: " + str(memory.temperature_6)
                  + "\r\ntemp 7: " + str(memory.temperature_7)
                  + "\r\ntemp 8: " + str(memory.temperature_8)
                  + "\r\nflowInput1Frequency: " + str(memory.flowInput1Frequency)
                  + "\r\nflowInput2Frequency: " + str(memory.flowInput2Frequency))

            transmit_input_values()
            loopTimer = utime.ticks_ms()
        else:
            if mqtt.subscribedDataAvailable() == 1:
                mqttData = mqtt.getSubscribedData()
                print("new MQTT message: " + mqttData)
                try:
                    jsonMessage = json.loads(mqttData)
                    stringValueValve1 = jsonMessage["AnaValue01"]
                    stringValueValve2 = jsonMessage["AnaValue02"]
                    stringValueHeatpump = jsonMessage["HeatpumpOut"]
                    stringValueBoiler = jsonMessage["BoilerValue"]

                    intValueValve1 = int(stringValueValve1)
                    intValueValve2 = int(stringValueValve2)
                    intValueHeatpump = int(stringValueHeatpump)
                    intValueBoiler = int(stringValueBoiler)
                except:
                    continue
                if len(mqttData) >= 4:
                    if memory.expansionBoardAnalogOutput != intValueHeatpump or \
                            memory.expansionBoardHeaterOutput != intValueBoiler or \
                            memory.valve_1 != intValueValve1 or \
                            memory.valve_2 != intValueValve2:
                        if intValueHeatpump > 100:
                            intValueHeatpump = 100
                        elif intValueHeatpump < 0:
                            intValueHeatpump = 0
                        if intValueBoiler > 1:
                            intValueBoiler = 1
                        elif intValueBoiler < 0:
                            intValueBoiler = 0
                        if intValueValve1 > 100:
                            intValueValve1 = 100
                        elif intValueValve1 < 0:
                            intValueValve1 = 0
                        if intValueValve2 > 100:
                            intValueValve2 = 100
                        elif intValueValve2 < 0:
                            intValueValve2 = 0
                        memory.expansionBoardAnalogOutput = intValueHeatpump
                        memory.expansionBoardHeaterOutput = intValueBoiler
                        memory.valve_1 = intValueValve1
                        memory.valve_2 = intValueValve2
                        mcu.WriteMcuInputData(
                            str(chr(intValueHeatpump) + chr(intValueBoiler) + chr(intValueValve1) + chr(
                                intValueValve2)))
        # Small delay to keep things responsive but give time for interrupt processing.
        utime.sleep_ms(100)
