FROM node:20.11.1-alpine3.19 AS base
LABEL author="Gustavo Rattmann<gustavo_rattmann@hotmail.com.br>"
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
COPY certificates /usr/src/app/
RUN apk update && \
    apk add git curl openssl ca-certificates && \
    apk rm -rf /var/cache/apk/*

FROM base AS dev
RUN yarn install && yarn cache clean
CMD ["yarn", "dev"]

FROM base AS prod
RUN yarn install && yarn cache clean
CMD ["yarn", "build"]