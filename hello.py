from flask import Flask, render_template, request
import docker

app = Flask(__name__)
app.config['SECRET_KEY'] = str(hex(id(1232132132131)))
client = docker.from_env()

@app.route("/", methods=["GET" , "POST"])
def base_page():
    if request.method == 'POST':
        docker_image = request.form['docker_image']
        command = request.form['command']
        client.containers.run(docker_image, command)

        return render_template('index.html')
    return render_template('index.html')

