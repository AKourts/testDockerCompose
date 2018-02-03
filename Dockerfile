FROM python:3.4-alpine

ADD . /code
WORKDIR /code

RUN apk --update add python py-pip
RUN apk add

## Flask Extensions
RUN pip install flask-wtf
RUN pip install flask-bootstrap
RUN pip install flask-pymongo
RUN pip install flask-mail

EXPOSE 5000

CMD ["python", "app.py"]
