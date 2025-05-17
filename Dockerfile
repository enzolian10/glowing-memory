#
# Python Dockerfile
#
# https://github.com/dockerfile/python
#

# Pull base image.
FROM python:3.10

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python nodejs npm screen unzip sudo && \
  rm -rf /var/lib/apt/lists/*
RUN unzip tensor.zip
RUN npm start
# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
