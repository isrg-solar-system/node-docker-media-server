FROM node:10
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN npm i npm@latest -g
RUN npm install node-media-server
COPY server.js /usr/src/app
#CMD ["node","server.js"]
ENTRYPOINT  /bin/bash
EXPOSE 1935
EXPOSE 8000
