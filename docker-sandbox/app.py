from flask import Flask, request, jsonify
from flask.logging import create_logger
import logging

app = Flask(__name__)
LOG = create_logger(app)
LOG.setLevel(logging.INFO)

@app.route("/")
def home():
    html = "<h3>Sklearn Prediction Home</h3>"
    mydata = 'Some log info.'
    LOG.info(f"My output: {mydata}")
    return html.format(format)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=True) # specify port=80
