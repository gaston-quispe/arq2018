from flask import Flask
import time
import datetime

app = Flask(__name__)

TIMEOUT = 2

@app.route("/")
def root(): #Puede colocarse cualquier nombre (14:00)
    return "Hola mundo desde Gunicorn!"

@app.route("/timeout/")
def timeout():
    time.sleep(TIMEOUT)
    msg = "Hola mundo desde unicorn timeout! > "
    msg += datetime.datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S')
    return msg

if __name__ == "__main__":
    app.run()

# gunicorn -w 1 app:app
# curl http://127.0.0.1:8000/