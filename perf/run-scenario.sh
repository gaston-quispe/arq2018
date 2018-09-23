#!/bin/sh
npm run artillery -- run $1.yaml -e $2

# ejemplo
# ./run-scenario root node
# ./run-scenario root gunicorn

# 33:30
# Paso puerto y hace request a url cambiando el puerto
# Hace el request a timeout
# Va a descartar la salida
# Cuando vuelva la respuesta va a sacar por consola cuando tardo todo el request
# en precesarse. Esto va a demorar mas de 10 segundos.
# Lo voy a correr en background para q no me frene mi script y se quede
# esperando los 10 segundos y luego mande otros request.
# Voy a enviar 3 request separados por 10 segundos.
# Voy a pedir a /timeout/ espero 2 segundos.
# Mando de nuevo, espero 2 segundos.
# Mando de nuevo.
# Saco por pantalla cuanto tardo ese request entre que fue y volvio desde el
# punto de vista del cliente.
# Tengo node. Voy a correr el test hacia el puerto 3000.
# 31:20
# Que va a devolver?
# 36:02
# Vamos a ver
# 37:30 corriendo en gunicorn con un solo worker
# node: 10-10-10 gunicorn: 10-18-26
# 39:50
# sincronico: Para ejecutar una necesito que termine otra
# 41:10 En node se ejecuta todo en un solo thread
# node va buscando que eventos estan listos para ser ejecutados
# 43:30 set tie out es NO BLOQUEANTE. Yo le invoco, dejaeso pendiente hasta que se cumpla
# timer y esta listo otra vez para ejecutar otro request

# 45:40 gunicorn

# 1:01:30 Docker
# Las imagenes se corre aisladas en un container y comparten el kernel
# opcion containerd

# 1:09:00 dockerfile para gunicorn
# solo hay procesos muyminimos corriendo en la imagen
# ENTRYPOINT parametro -b por estar corriendo dentro de un container
# -b 0.0.0.0:8000 -> dice donde tiene q estar escuchando la aplicacion
# 1:14:16
# 0.0.0.0 : Escucha por cualquier red en el puerto 8000
# Necesito sino sino no puedo entrar de afuera hacia adentro