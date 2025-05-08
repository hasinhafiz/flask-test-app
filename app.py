from flask import Flask, jsonify, render_template

app = Flask(__name__)

@app.route('/', methods = ['POST', 'GET'])
def index():
    return render_template('index.html')

@app.route("/health")
def health():
    return jsonify(status="ok", message="Service is healthy")

@app.route("/api/info")
def info():
    return jsonify(
        service="Flask DevOps Test App",
        version="1.0",
        environment="production"
    )

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)