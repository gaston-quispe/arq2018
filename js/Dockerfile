FROM node:8.12.0
RUN mkdir /usr/app
WORKDIR /usr/app
COPY package.json .
COPY app.js .
RUN npm install
ENTRYPOINT ["node", "app.js"]

# docker build -t arq_js .

# docker run arq_js -p 3000:3000    #PUERTO_UBUNTU:PUERTO_CONTAINER