FROM ubuntu:18.04

RUN apt-get update && apt-get install -y python3.6 python3-distutils python3-pip python3-apt
RUN apt-get install -y libgl1-mesa-glx