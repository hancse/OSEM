from tkinter import *
# import mqttCommunication
import pahoMqtt
import json

### MQTT definitions ###
subscribtionTopic = "mosquitto_pub"
publishTopic = "mosquitto_sub"
mqtt = pahoMqtt.pahoMqttCommunication()

### GUI definitions ###
win  = Tk()
win.title("Test application HAN SIOM")
win.geometry("750x900")

### Event functions ###
def buttonClick():
    # do stuff
    value1 = 0
    value2 = 0
    value3 = 0
    value4 = 0
    try:
        analaogOut = int(En_analogOutput.get())
        if analaogOut <= 100 and analaogOut >= 0:
            En_analogOutput.configure({"background":"green"})
            value1 = 1;
        else:
            En_analogOutput.configure({"background":"red"})
    except:
         En_analogOutput.configure({"background":"red"})
    
    try:
        heaterOut = int(En_HeaterOutput.get())
        if heaterOut <= 1 and heaterOut >= 0:
            En_HeaterOutput.configure({"background":"green"})
            value2 = 1;
        else:
            En_HeaterOutput.configure({"background":"red"})
    except:
        En_HeaterOutput.configure({"background":"red"})
    
    try:        
        valve1Out = int(En_Valve1Output.get())
        if valve1Out <= 100 and valve1Out >= 0:
            En_Valve1Output.configure({"background":"green"})
            value3 = 1;
        else:
            En_Valve1Output.configure({"background":"red"}) 
    except:
         En_Valve1Output.configure({"background":"red"})   
    
    try:
        valve2Out = int(En_Valve2Output.get())
        if valve2Out <= 100 and valve2Out >= 0:
            En_Valve2Output.configure({"background":"green"})
            value4 = 1;
        else:
            En_Valve2Output.configure({"background":"red"})  
    except:
        En_Valve2Output.configure({"background":"red"})    
    
    if value1 == 1 and value2 == 1 and value3 == 1 and value4 ==1:    
        MqttPublishWindow.insert(END, "Output >>\nHeatpump output: " + En_analogOutput.get() + "\nBoiler output: " + En_HeaterOutput.get() + "\nValve 1 output: " + En_Valve1Output.get() + "\nValve 2 output: " + En_Valve2Output.get() + "\n")    
        jsonMessage = {
            "unitMode": "RemoteControlled",
            "AnaValue01": En_Valve1Output.get(),
            "AnaValue02": En_Valve2Output.get(),
            "HeatpumpOut": En_analogOutput.get(),
            "BoilerValue": En_HeaterOutput.get()
            }
        mqtt.writeMqtt(json.dumps(jsonMessage))
    
def mqttSubscribe():
    MqttSubscribeWindow.insert(END, "Subscribing to MQTT topic: " + subscribtionTopic + " : ")    
    MqttPublishWindow.insert(END, "Publish to MQTT topic: " + publishTopic + " : ")
    mqttSetup = mqtt.initiateConnection()
    if mqttSetup == -1:
        MqttSubscribeWindow.insert(END, "Failed\n")
    else:
        MqttSubscribeWindow.insert(END, "Succeeded\n")

def clear():
    MqttSubscribeWindow.delete(1.0, END)
    MqttPublishWindow.delete(1.0, END)
    MqttSubscribeWindow.insert(END, "Subscribing to MQTT topic: " + subscribtionTopic + " : ")
    MqttPublishWindow.insert(END, "Publish to MQTT topic: " + publishTopic + " : ")

def close():
    mqtt.closeConnection()
    win.destroy()
    
def checkData():
        # stuff in loop
    if mqtt.subscribedDataAvailable() == 1:
        MqttSubscribeWindow.insert(END, mqtt.getSubscribedData() + "\n")
    win.after(100, checkData)
    
### Widgets ###
MqttSubscribeWindow = Text(win, width=60, height=20)
MqttSubscribeWindow.pack(pady=20)
MqttPublishWindow = Text(win, width=60, height=20)
MqttPublishWindow.pack(pady=20)

ButtonFrame = Frame(win)
ButtonFrame.pack()

PublishButton = Button(ButtonFrame, text="Publish", command=buttonClick)
PublishButton.grid(row=0, column=0)
SubscribeButton = Button(ButtonFrame, text="Subscribe", command=mqttSubscribe)
SubscribeButton.grid(row=0, column=1, padx=20)
ClearButton = Button(ButtonFrame, text="Clear", command=clear)
ClearButton.grid(row=0, column=2, padx=20)

Lb_Valve1Output = Label(ButtonFrame, text="Valve 1 output\n0-100%")
Lb_Valve1Output.grid(row=2, column=0)
En_Valve1Output = Entry(ButtonFrame)
En_Valve1Output.grid(row=3, column=0)

Lb_Valve2Output = Label(ButtonFrame, text="Valve 2 output\n0-100%")
Lb_Valve2Output.grid(row=2, column=1)
En_Valve2Output = Entry(ButtonFrame)
En_Valve2Output.grid(row=3, column=1)

Lb_AnalogOutput = Label(ButtonFrame, text="Heatpump output\n0-100%")
Lb_AnalogOutput.grid(row=2, column=2)
En_analogOutput = Entry(ButtonFrame)
En_analogOutput.grid(row=3, column=2)

Lb_HeaterOutput = Label(ButtonFrame, text="Boiler output\n0-1")
Lb_HeaterOutput.grid(row=2, column=3)
En_HeaterOutput = Entry(ButtonFrame)
En_HeaterOutput.grid(row=3, column=3)


# x button handle
win.protocol("WM_DELETE_WINDOW", close)  # close screen 

checkData()
win.mainloop()       

