FROM node:latest

WORKDIR /app

COPY *.json .

RUN npm install

EXPOSE 4000

COPY src/* . 

