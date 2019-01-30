FROM node-starterkit

WORKDIR /src

COPY package.json /src/package.json

RUN npm install

COPY . /src

EXPOSE 5001

ENTRYPOINT [ "node","index.js" ]