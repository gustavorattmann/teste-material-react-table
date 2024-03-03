FROM node:20.11.1-alpine3.19 AS base
LABEL author="Gustavo Rattmann<gustavo_rattmann@hotmail.com.br>"
WORKDIR /usr/src/app/
COPY --chown=node:node package.json /usr/src/app/
USER node
RUN mkdir -p keys && apk update && \
    apk add git curl openssl ca-certificates dumb-init && \
    apk rm -rf /var/cache/apk/* && \
    openssl ecparam -genkey -name secp521r1 -noout -out keys/private.key && \
    openssl ec -in keys/private.key -pubout -out public.key

FROM base AS dev
RUN yarn install && yarn cache clean
CMD ["yarn", "dev"]

FROM base AS prod
ENV NODE_ENV production
RUN rm -rf node_modules && \
    yarn install --immutable --immutable-cache --check-cache --prod && \
    yarn cache clean
CMD ["yarn", "build"]