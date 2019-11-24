'use strict';

const morgan = require('morgan');
const express = require('express');
const app = express();

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
    HOST: HOST
};


