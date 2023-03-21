from flask import Flask,  request, render_template_string

app = Flask(__name__)

@app.route("/",methods = ['POST', 'GET'])
def hello_world():
    if request.method == 'GET':
        return """Let me format the text for you !<br>
        <form action=. method=POST>
        <input name=title type=text><br>
        <textarea name=paragraph></textarea>
        <input type=submit value=FORMAT>"""
    else:
        return render_template_string("<h1>" + request.form['title'] + """</h1>
        <p>""" +  request.form['paragraph'] + "</p>")


