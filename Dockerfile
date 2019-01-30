# Only for the demo purpose
FROM alpine

WORKDIR /src

RUN apk add --update nodejs nodejs-npm

COPY package.json /src/package.json

RUN npm install

COPY . /src

EXPOSE 5001

ENTRYPOINT [ "node","index.js" ]