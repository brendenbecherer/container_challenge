from flask import Flask,request,jsonify

app = Flask(__name__)

@app.route('/', methods=['GET'])
def get_message():
    return jsonify({"message": "success" })
    
@app.route('/', methods=['POST'])
def echo_post():
    data = request.json
    return jsonify(data)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
