# Data Science Environment Using Docker

This project provides a Dockerfile which uses Anaconda as a base image and installs the packages, dependencies and python libraries required for studying Data Science course with lecturer Kholed Langsari. With this Dockerfile, students can quickly head into class and have an environment ready for them without having to worry about the configuration and installation.

## Packages installed:

- Python
- Numpy
- Pandas
- Statsmodels
- Matplotlibs
- Seaborn
- Scikit Learn
- Git
- Jupyter

## Software Required:
- Docker desktop app
- Visual Studio Code
- Terminal

## How to pull Dockerfile, build image and run the container:

There are two ways to pull the Dockerfile:

### Method 1: Pull from DockerHub

- Enable the Docker Daemon but launching the Docker desktop app.

- Next, pull the Docker image from the Remote Repository writing this on the terminal:

`docker pull khaledwangbuesa/data_science`

- After it has finished pulling. You will be able to run it.

- To do that, you must use the command in the terminal: `docker run -d --name (container_name) -p 8000:8000 khaledwangbuesa/data_science`
You may name the container anything you like, the image name should be the same name as that you have built earlier. This will run that Docker image in a newly created container and maps the container port `8000` to the host port `8000`

### Method 2: Download/Clone the Git repository from GitHub.

- Simply, target the directory containing the Dockerfile in your system in the terminal by using `cd` OR right-click the Dockerfile after you opened it in Visual Studio Code and select `Open in Integrated Terminal`

- Build the Docker image by using `docker build -t (image_name) .`
You may name the Docker image anything you wish.

- After it has finished installing everything. You will be able to run it.

- To do that, you must use the command in the terminal: `docker run -d --name (container_name) -p 8000:8000 (image_name)`
You may name the container anything you like, the image name should be the same name as that you have built earlier. This will run that Docker image in a newly created container and maps the container port `8000` to the host port `8000`

## To access the Jupyter's Notebook:

- Now that your Docker container is running, you can access the Jupyter's Notebook by entering `http://localhost:8000/lab` in your browser. It might prompt you for the token.
In order to find the token. You can check the container tab on Docker desktop app and click on the container that you are running. In the logs tab, you will find some lines that look like this:

```
2023-02-22 20:14:19     To access the notebook, open this file in a browser:
2023-02-22 20:14:19         file:///root/.local/share/jupyter/runtime/nbserver-1-open.html
2023-02-22 20:14:19     Or copy and paste one of these URLs:
2023-02-22 20:14:19         http://252c91b53326:8000/?token=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
2023-02-22 20:14:19      or http://127.0.0.1:8000/?token=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

- You can copy and paste the string that appears after `?token=` and insert it into the textfield. You should be able to access Python terminal along with the different packages through Jupyter's Notebook and begin your projects.

## How to attach the container to Visual Studio Code:

- To access any code from within the container using VS Code, you need to install the VS Code extension called "Dev Container." This extension allows you to access any folder or repositories within a Docker container.

- After you finish installing the extension, click on the button in the bottom left corner of the window which is labelled "Open a Remote Window"

- You will get an option to reopen VS Code in container or you may navigate the container and open a folder instead. Happy Coding :)

## Credits

- KHALED WANGBUESA - 641431021
- YASER ABULKHAIR - 641431023
- AHMAD WAEBEUSAR - 641431020

## Link to DockerHub page

https://hub.docker.com/r/khaledwangbuesa/data_science

## Link to GitHub page

https://github.com/KhaledWang/devops-2023
