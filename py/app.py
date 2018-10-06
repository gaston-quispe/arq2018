from flask import Flask
import time
import datetime

app = Flask(__name__)

TIMEOUT = 1
LOOP = 100000000

@app.route("/")
def root():
    return "Hola mundo desde Gunicorn!\n"

@app.route("/timeout/")
def timeout():
    time.sleep(TIMEOUT)
    msg = "Hola mundo desde unicorn timeout! > "
    msg += datetime.datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S')
    return msg + "\n"

@app.route("/intensivo/")
def intensivo():
    i=0
    while(i<LOOP):
        i=i+1
    msg = "Procesamiento intensivo finalizado > "
    msg += datetime.datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S')
    return msg + "\n"

if __name__ == "__main__":
    app.run()

# gunicorn -w 1 app:app
# curl http://127.0.0.1:8000/