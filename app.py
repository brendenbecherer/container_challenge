from flask import Flask,request,jsonify

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def hello():
    if request.method == 'GET':
        return jsonify({"message": "success" })
    else: 
        data = request.json
        return jsonify(data)
    
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
