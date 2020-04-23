FROM node:12-alpine

WORKDIR /app

COPY ./src ./src
COPY ./package*.json ./
COPY ./tsconfig.json ./

RUN npm install
RUN npm run build

EXPOSE 4000

CMD [ "npm", "start" ]