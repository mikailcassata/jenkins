from flask import Flask , Response, url_for
from flask import request
from flask import render_template
import datetime
import subprocess
bashCommandName = 'hostname'
#bashCommandName = 'cat /etc/timezone'
hostname = subprocess.check_output(['sh','-c', bashCommandName]) 



microweb_app = Flask(__name__)
@microweb_app.route("/")
def main():      
    return render_template("index.html",hostname = hostname)

@microweb_app.route("/time")
def time():
    def generate():
        yield datetime.datetime.now().strftime("%Y.%m.%d|%H:%M:%S")
    return Response(generate(), mimetype='text')
if __name__ == "__main__":
    microweb_app.run(host="0.0.0.0", port=80)
