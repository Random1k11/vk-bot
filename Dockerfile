FROM python:3.8-alpine


RUN apk update
RUN python3 -m pip install --upgrade pip

RUN mkdir /app
COPY  requirements.txt /app/requirements.txt
RUN python3 -m pip install -r /app/requirements.txt

COPY ./ ./app
WORKDIR ./app

RUN ["chmod", "+x", "docker-entrypoint.sh"]
EXPOSE 5000
ENTRYPOINT ["sh", "/app/docker-entrypoint.sh"]
