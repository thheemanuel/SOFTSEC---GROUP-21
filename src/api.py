from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/hello", methods=["GET"])
def hello():
    return jsonify({"message": "Hello world!"})

# making sure the docker application not only listens on 127.0.0.1 which means it only listens inside of the container.
# Using 0.0.0.0 allows traffic to reach flask
if __name__ == "__main__": 
    app.run(host="0.0.0.0", port=5000) 
    
