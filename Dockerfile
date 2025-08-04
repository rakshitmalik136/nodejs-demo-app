#Base Image
FROM node:18-alpine

#Create app dir
WORKDIR /usr/src/app

#Install Dependencies
COPY package*.json ./
RUN npm install --production

#Copy source code
COPY . . 

#Expose Port
EXPOSE 3000

#Start the app
CMD ["node", "server.js"]

