from flask import Flask
import time

app = Flask(__name__)

@app.route("/")
def root():
    return "Hola mundo desde Gunicorn!"

@app.route("/timeout/")
def timeout():
    time.sleep(1)
    return "Hola mundo timeout"

if __name__ == "__main__":
    app.run()

# gunicorn -w 1 app:app
# curl http://127.0.0.1:8000/