FROM python:3.8-slim-buster

RUN apt-get update && apt-get install -y libgl1-mesa-glx && apt-get install -y libglib2.0-0 libsm6 libxrender1 libxext6


COPY requirements.txt /
RUN pip3 install -r /requirements.txt
COPY . /app
WORKDIR /app
ENTRYPOINT ["./gunicorn_starter.sh"]
