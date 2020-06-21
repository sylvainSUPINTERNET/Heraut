'use strict';

const WebSocket = require('ws');
const http = require('http');
const morgan = require('morgan');
const express = require('express');
const app = express();

const server = http.createServer(app);
const wss = new WebSocket.Server({ port: process.env.WS_PORT || 9999 });

const redis = require("redis");
const client = redis.createClient({
    // for developement, just start the service from docker-compose then replace by localhost
    // for developement with docker, replace this by the service from docker-compose.yml
    host: process.env.REDIS_SERVER_URL || 'localhost', // refer to docker-compose service name : redis-server to work with docker
    port: process.env.REDIS_PORT || 6379
});

client.on("error", function(error) {
    console.error("REDIS client error : ", error);
});


// Logs
app.use(morgan('combined'));


// Constants
const PORT = process.env.PORT || 3200;
const HOST = process.env.HOST || '0.0.0.0';



/*
TODO
pour le docker compose
messagerie:
  env_file:
    - .env
 */

/*
$ cat ./Docker/api/api.env
NODE_ENV=test

$ cat docker-compose.yml
version: '3'
services:
  api:
    image: 'node:6-alpine'
    env_file:
     - ./Docker/api/api.env
    environment:
     - NODE_ENV=production
 */


module.exports = {
    app: app,
    PORT: PORT,
    HOST: HOST,
    WSS: wss,
    svr: server,
    redisClient: client,
    WebSocket: WebSocket
};


