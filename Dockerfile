FROM node:6.2-slim

RUN apt-get update
RUN apt-get install -y git-core
RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY package.json /opt/app
RUN npm install
COPY ./ /opt/app
