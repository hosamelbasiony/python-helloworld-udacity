# set the base image. Since we're running 
# a Python application a Python base image is used
FROM python:3.10
# set a key-value label for the Docker image
LABEL maintainer="Hosam Mohammad"
# copy files from the host to the container filesystem. 
# For example, all the files in the current directory
# to the  `/app` directory in the container
COPY . /app
#  defines the working directory within the container
WORKDIR /app
# run commands within the container. 
# For example, invoke a pip command 
# to install dependencies defined in the requirements.txt file. 
RUN pip install -r requirements.txt
# provide a command to run on container start. 
# For example, start the `app.py` application.
CMD [ "python", "app.py" ]

# docker login hosam.el.basiony@gmail.com dev@dmin4063

# docker build -t python-helloworld .
# docker run -d -p 5555:5000 python-helloworld
# docker tag python-helloworld hosamelbasiony/python-helloworld:v1.0.0
# docker push hosamelbasiony/python-helloworld:v1.0.0