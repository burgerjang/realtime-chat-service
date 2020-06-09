FROM python:3.7-buster

RUN apt-get update \
    && apt-get -y upgrade

RUN mkdir -p /opt/app/
RUN mkdir -p /opt/source/
RUN mkdir -p /opt/app/pip_cache
COPY requirements.txt /opt/app/
WORKDIR /opt/app/
RUN pip3 install -r requirements.txt --cache-dir /opt/app/pip_cache
RUN chown -R www-data:www-data /opt/app
