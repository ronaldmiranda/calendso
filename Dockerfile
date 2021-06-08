FROM node:slim

WORKDIR /app
COPY . .

RUN apt-get update \
      && apt install -y openssl

RUN yarn install && yarn build

ENTRYPOINT [ "yarn", "start" ]
