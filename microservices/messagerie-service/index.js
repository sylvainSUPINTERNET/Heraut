'use strict';

const log = console.log;


log(`HOST from .env > ${process.env.HOST}`);
log(`PORT from .env > ${process.env.PORT}`);


const testRouter = require('./routers/test');
const server = require('./server');

server.app.use("/test",testRouter);

server.app.listen(server.PORT);
log(`Running on http://${server.HOST}:${server.PORT}`);

