import requests
import json
import pyrebase

# Configuracion Firebase
#######################################################
config = {
  "apiKey": "apiKey",
  "authDomain": "seismicapp-ab75b.firebaseapp.com",
  "databaseURL": "https://seismicapp-ab75b.firebaseio.com/",
  "storageBucket": "seismicapp-ab75b"
}

firebase = pyrebase.initialize_app(config)
db = firebase.database()
#######################################################


def jprint(obj):
    text = json.dumps(obj, sort_keys=True, indent=4)
    print(text)


# API usada.
response = requests.get('https://api.gael.cl/general/public/sismos')
#######################################################
databaseTemblor = db.child("temblores").get().val()
apiTemblor = response.json()


compararApi = []
for respuesta in apiTemblor:
    respuesta = dict(sorted(respuesta.items()))
    compararApi.append(respuesta)


compararBase = []
for temblor in databaseTemblor:
    entrada = databaseTemblor[temblor]
    compararBase.append(entrada)


posACambiar = []
pos = 0
for dato1 in compararApi:
    i = 0
    for dato2 in compararBase:
        if dato1['Fecha'] != dato2['Fecha']:
            i += 1
            pass
        else:
            break
    if i != len(compararBase):
        print('Ningun cambio')
    else:
        posACambiar.append(pos)
        print('Entrada nueva encontrada')
    pos += 1

if posACambiar != []:
    for x in posACambiar:
        db.child("temblores").push(compararApi[x])
        print('Entradas añadidas con exito')

input()