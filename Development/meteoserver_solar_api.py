import urllib.request, urllib.parse, urllib.error
import json
import matplotlib.pyplot as plt

api_key = '392ab40d48'

locatie = input('Enter location: ')
if len(locatie)<1: locatie = 'De Bilt'

parms = dict()
parms['locatie'] = locatie
if api_key is not False: parms['key'] = api_key
url = 'https://data.meteoserver.nl/api/solar.php?' + urllib.parse.urlencode(parms)
print('Retrieving', url + '\n\n')

uh = urllib.request.urlopen(url)
data = uh.read().decode()
info = json.loads(data)



print("\n\n" + "#################################")
print(info['plaatsnaam'][0]['plaats'] + " (" + info['current'][0]['station'] + ")")
print(info['current'][0]['cet'])
print(info['current'][0]['temp'] + 'gC')
print("########### De Zon nu ###########")
print("Positie: " + info['current'][0]['elev'] + "alt, " + info['current'][0]['az'] + 'az')
print("Stralingsintensiteit: " + info['current'][0]['gr'] + 'W/m2')
print("Wolkenbedekking: " + info['current'][0]['tc'] + '%')
print("Zonneschijnduur (t/Mill10m): " + info['current'][0]['sd'] + 'm')
print("#################################" + "\n\n")

gr_list = list()
temp_list = list()
for item in info['forecast']:
    gr_list.append(int(item['gr']))
    temp_list.append(float(item['sd']))

plt.plot(gr_list)
plt.plot(temp_list)
plt.title('Global radiation hourly prediction')
plt.xlabel('Hours from now [hrs]')
plt.ylabel('Global radiation [W/m2] & sunshine duration [min/hr]')
plt.grid()
plt.xticks([0,12,24,36,48,60,72,84,96,108])
plt.show() 