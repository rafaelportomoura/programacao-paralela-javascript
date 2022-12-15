FROM node:16-alpine3.14

WORKDIR /home/node/app

ADD ["./package.json", "./package.json"]
ADD ["./tsconfig.json", "./tsconfig.json"]
ADD ["./src", "./src"]

RUN yarn install --ignore-engines
RUN yarn build

RUN rm -rf ./node_modules

RUN yarn install --ignore-engines --production=true
RUN find ./node_modules -mtime +10950 -exec touch {} +
RUN yarn add cross-env

RUN chmod 777 ./dist
RUN chmod 777 ./dist/*
RUN chmod 777 ./package.json


