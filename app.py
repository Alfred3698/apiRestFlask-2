
from flask import Flask, jsonify
import os

app = Flask(__name__)
app.config['DEBUG'] = True


@app.route('/')
def index():
    return jsonify({"Choo Choo": "Welcome to your Flask app 🚅"})
