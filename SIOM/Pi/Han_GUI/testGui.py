import tkinter
from tkinter import *
# import mqttCommunication
import pahoMqtt
import json

### MQTT definitions ###
published_topics = [
    ("valve1", "Valve 1", 0, 100),
    ("valve2", "Valve 2", 0, 100),
    ("boiler", "Boiler", 0, 100),
    ("heatpump", "Heatpump", 0, 1),
]

subscribed_topics = [
    ("temp1", "Temperature 1"),
    ("temp2", "Temperature 2"),
    ("temp3", "Temperature 3"),
    ("temp4", "Temperature 4"),
    ("temp5", "Temperature 5"),
    ("temp6", "Temperature 6"),
    ("temp7", "Temperature 7"),
    ("temp8", "Temperature 8"),
    ("flow1", "Flow 1"),
    ("flow2", "Flow 2"),
    ("analogstate1", "Analog state 1"),
    ("analogstate2", "Analog state 2"),
    ("heatpumpstate", "Heat pump state"),
    ("boilerstate", "Boiler state"),
]

subDataList = []
pubDataList = []


class subData():
    def __init__(self, name, topic):
        self.name = name
        self.topic = topic
        self.value = ''
        self.labelName = "pubLabel_" + topic
        self.valueName = "val_" + topic

    def createLabelField(self, vertical):
        self.labelname = Label(win, text=globals()[className].name).grid(column=0, row=vertical, sticky='w')

    def createValueField(self, vertical):
        self.valuename = Label(win, text=self.value).grid(column=1, row=vertical, sticky='w')

    def setValue(self, value):
        self.value = value
        self.valuename = Label(win, text=self.value).grid(column=1, row=sub_fieldnames.index(self.name), sticky='w')


class pubData():
    def __init__(self, name, topic):
        self.buttonName = "button_" + topic
        self.labelName = "pubLabel_" + topic
        self.valueName = "val_" + topic
        self.name = name
        self.topic = topic
        self.value = IntVar()


    def createLabelField(self, vertical):
        self.labelname = Label(win, text=self.name).grid(column=0,
                                                        row=vertical,
                                                        sticky='w')
    def createScaleField(self, vertical, min, max):
        self.valuename = Scale(win, orient=tkinter.HORIZONTAL, from_=min, to=max,
                                           variable=self.value).grid(column=1, row=vertical, sticky='w')

    def createPublishButton(self, vertical):
        self.buttonname = Button(win, text="Publish", command=self.publishData).grid(
            column=2,
            row=vertical,
            sticky='w')

    def publishData(self):
        out = self.value.get()
        print(out)
        mqtt.writeMqtt(self.topic, str(out))


sub_topics, sub_fieldnames = zip(*subscribed_topics)
pub_topics, pub_fieldnames, pub_min, pub_max = zip(*published_topics)

mqtt = pahoMqtt.pahoMqttCommunication()

### GUI definitions ###
win = Tk()
win.title("Test application HAN SIOM")
win.geometry("800x600")


### Event functions ###

def mqttSubscribe():
    mqttSetup = mqtt.initiateConnection()
    if mqttSetup == -1:
        print("Fail")
    else:
        print("succes")

    for topic in sub_topics:
        mqtt.appendTopics(topic)

    mqtt.subscribeToTopics()

def close():
    mqtt.closeConnection()
    win.destroy()


def checkData():
    # stuff in loop
    if mqtt.subscribedDataAvailable() == 1:

        for c in subDataList:
            if c.topic in mqtt.lastMessage:
                length = len(c.topic)
                string_value = mqtt.lastMessage
                value = string_value[length:len(string_value)]
                int_value = int(value)
                c.setValue(int_value)


    win.after(100, checkData)

    classname = 'c_temp1'



### Widgets ###
mqttSubscribe()
win.columnconfigure(0, weight=1)
win.columnconfigure(1, weight=1)
win.columnconfigure(2, weight=1)

for field in sub_fieldnames:
    variable = sub_topics[sub_fieldnames.index(field)]
    className = "c_" + variable
    globals()[className] = (subData(name=field, topic=variable))
    globals()[className].createLabelField(vertical=sub_fieldnames.index(field))
    globals()[className].createValueField(vertical=sub_fieldnames.index(field))
    subDataList.append(globals()[className])


for field in pub_fieldnames:
    variable = pub_topics[pub_fieldnames.index(field)]
    min = pub_min[pub_fieldnames.index(field)]
    max = pub_max[pub_fieldnames.index(field)]
    className = "c_" + variable
    vertical = (pub_fieldnames.index(field)) + len(sub_fieldnames)
    globals()[className] = (pubData(name=field, topic=variable))
    globals()[className].createLabelField(vertical)
    globals()[className].createScaleField(vertical, min, max)
    globals()[className].createPublishButton(vertical)

# x button handle
win.protocol("WM_DELETE_WINDOW", close)  # close screen

checkData()
win.mainloop()
