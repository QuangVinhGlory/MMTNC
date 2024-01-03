FROM node:20.10.0-alpine3.16

WORKDIR /app

COPY . /app

EXPOSE 3000

RUN npm install

CMD ["npm", "run", "start"]
