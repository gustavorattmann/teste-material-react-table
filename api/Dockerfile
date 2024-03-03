FROM node:20.11.1-alpine3.19 AS base
LABEL author="Gustavo Rattmann<gustavo_rattmann@hotmail.com.br>"
WORKDIR /usr/src/app/
COPY package.json .
RUN mkdir -p keys && chown node:node keys && apk update && \
    apk add git curl openssl ca-certificates dumb-init && \
    rm -rf /var/cache/apk/* && \
    openssl ecparam -genkey -name secp521r1 -noout -out keys/private.key && \
    openssl ec -in keys/private.key -pubout -out public.key
COPY . .
RUN yarn install && yarn cache clean
CMD ["yarn", "run", "dev"]