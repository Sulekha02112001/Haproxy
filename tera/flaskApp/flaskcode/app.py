from flask import Flask, render_template

import subprocess

app = Flask("myapp")

@app.route("/")
def search():
    return(subprocess.getoutput('hostname'))

if __name__ == "__main__":
        app.run(host ='0.0.0.0', port = 5001, debug = True)