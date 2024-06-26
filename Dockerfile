FROM python:2.7.18

WORKDIR /usr/src/app

COPY project/requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt