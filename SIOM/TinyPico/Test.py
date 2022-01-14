# Write your code here :-)
import micropython
import time
from machine import Pin, I2C, reset
import I2cCommunication
import systemMemory
import mqttCommunication

_OUTPUT_DATA_TIMER_MS = const(5000)

def transmitInputValues():
# outdata = [memory.temperature_1,
    # memory.temperature_2,
    # memory.temperature_3,
    # memory.temperature_4,
    # memory.temperature_5,
    # memory.temperature_6,
    # memory.temperature_7,
    # memory.temperature_8,
    # (memory.flowInputFrequency & 0xFF00) >> 8,
    # (memory.flowInputFrequency & 0x00FF)]
    # mqtt._writeMqtt(outdata)
    print("Published new data")
    return

