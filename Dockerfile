FROM node:11.15.0-alpine
RUN npm install pm2 nodemon supervisor -g
WORKDIR /usr/src/app
COPY . .
RUN npm install --production
CMD ["pm2-docker", "./src/index.js"]