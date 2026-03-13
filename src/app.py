from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return "My name is Badri Narayanan and I am a DevOps engineer  ", 200

@app.route("/health")
def health():
    return jsonify(status="UP"), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=4000)