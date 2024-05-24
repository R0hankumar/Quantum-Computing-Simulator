from flask import Flask, jsonify, request
from quantum import run_simulation

app = Flask(__name__)

@app.route('/simulate', methods=['POST'])
def simulate():
    data = request.json
    circuit = data.get('circuit')
    result = run_simulation(circuit)  # Assume run_simulation is a function from quantum.py
    return jsonify(result)

if __name__ == '__main__':
    app.run(debug=True)
