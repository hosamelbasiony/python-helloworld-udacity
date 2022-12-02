from flask import Flask
from flask import json

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!"

@app.route('/summary')
def summary():
    data = { "payload": "Hello There!" }
    response = app.response_class(
        response=json.dumps(data),
        status=200,
        mimetype='application/json'
    )
    return response

if __name__ == "__main__":
    app.run(host='0.0.0.0')
