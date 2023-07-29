FROM node:18
USER root

# Create app directory
WORKDIR /usr/src/app
# Creting Docker inside docker container
#RUN apt-get update && \
 #   apt-get -qy full-upgrade && \
  #  apt-get install -qy curl && \
   # apt-get install -qy curl && \
   # curl -sSL https://get.docker.com/ | sh
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
#install nodejs
#RUN apt-get -y install curl gnupg
#RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
#RUN apt-get -y install nodejs
RUN npm install
#RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev

# Bundle app source
COPY . .

EXPOSE 8081
CMD [ "node", "server.js" ]
