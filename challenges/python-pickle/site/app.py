from flask import Flask,  request, render_template_string
import pickle
import base64

app = Flask(__name__)

@app.route("/",methods = ['GET','POST'])
def hello_world():
    if request.method == 'POST':
        return pickle.loads(base64.b64decode(request.form['data']))
    else:
        return """SEND ME THE PICKLE ! <br>
        <form action=. method=POST>
        <textarea name=data></textarea>
        <input type=submit value=UNPICKLE>"""

