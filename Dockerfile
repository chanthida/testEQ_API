FROM node:7.9.0

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install --save-dev babel-cli 

# Bundle app source
 COPY . /usr/src/app


EXPOSE 5000
#CMD [ "npm", "start" ]
CMD ["./node_modules/.bin/babel-node","src/index.js"]