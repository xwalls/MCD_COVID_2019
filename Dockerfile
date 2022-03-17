FROM python:3.8-slim

RUN apt-get update && apt-get --yes upgrade

RUN apt install --yes \
    build-essential \
    unzip \
    wget

RUN pip install \
    csvkit \
    matplotlib \
    numpy \
    pandas