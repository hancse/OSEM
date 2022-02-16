import json

fObj = open('../MQQT/SiomTransmitMsg.json')
d = json.load(fObj)
print()

for key,value in d.items():
	print(key, ':', value)

for key in d:
    print(key, ' : ', d[key])

[print(key, value) for key, value in d.items()]

d2 = d
s = json.dumps(d2)
print(s)
