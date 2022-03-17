FROM python:3.8-slim

WORKDIR /workdir

COPY . .

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

RUN make download_covid19_data
RUN make unzip_data
RUN make cut_data
RUN make run_analysis