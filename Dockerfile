FROM python:alpine
MAINTAINER Will Price <will.price94@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app

CMD ["python", "./prime_server.py"]
