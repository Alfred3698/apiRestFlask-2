FROM python:3.8-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN apt-get update && apt-get install -y libgl1-mesa-glx
RUN pip3 install -r requirements.txt

COPY . .
# Add this:
ENV FLASK_APP=main.py
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]