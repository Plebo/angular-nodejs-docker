FROM node:8

# Create app directory
WORKDIR /usr/src/app

# set working directory

WORKDIR /usr/src/app

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /usr/src/app/package.json
RUN npm install
RUN npm install -g @angular/cli@1.7.1

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "serve.js" ]