#!/bin/bash

# Usarlo asi
# ./run-timeout.sh gunicorn
# ./run-timeout.sh node

if [ "$1" == "gunicorn" ]
then
    SECONDS=0
    echo "Request 1 enviado a $SECONDS segundos"
    curl -o /dev/null -s -w 'Tiempo total request 1: %{time_total}\n' http://localhost:5555/gunicorn/timeout/ &
    sleep 2
    echo "Request 2 enviado a $SECONDS segundos"
    curl -o /dev/null -s -w 'Tiempo total request 2: %{time_total}\n' http://localhost:5555/gunicorn/timeout/ &
    sleep 2
    echo "Request 3 enviado a $SECONDS segundos"
    curl -o /dev/null -s -w 'Tiempo total request 3: %{time_total}\n' http://localhost:5555/gunicorn/timeout/ &
    
else if [ "$1" == "node" ]
    then
        SECONDS=0
        echo "Request 1 enviado a $SECONDS segundos"
        curl -o /dev/null -s -w 'Tiempo total request 1: %{time_total}\n' http://localhost:5555/node/timeout/ &
        sleep 2
        echo "Request 2 enviado a $SECONDS segundos"
        curl -o /dev/null -s -w 'Tiempo total request 2: %{time_total}\n' http://localhost:5555/node/timeout/ &
        sleep 2
        echo "Request 3 enviado a $SECONDS segundos"
        curl -o /dev/null -s -w 'Tiempo total request 3: %{time_total}\n' http://localhost:5555/node/timeout/ &
    fi
fi