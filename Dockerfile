FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y
RUN apt-get install nodejs -y
RUN apt-get install npm -y
RUN apt-get update -y
RUN mkdir /home/app
WORKDIR /home/app
COPY package*.json ./
RUN npm install
CMD ["npm", "ci"]
COPY index.js .
CMD ["npm",  "start"]
