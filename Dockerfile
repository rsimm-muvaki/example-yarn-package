FROM node:10.16.0 as build

WORKDIR /usr/src/app

COPY index.js package.json yarn.lock ./

COPY __tests__ ./__tests__

RUN yarn install

FROM node:10.16.0

ENV HELLO="Hello World!  Testy test."

COPY --from=build /usr/src/app /usr/src/app

WORKDIR /usr/src/app

CMD ["yarn", "test"]