'use strict';
const log = console.log;


log(`HOST from .env > ${process.env.HOST}`);
log(`PORT from .env > ${process.env.PORT}`);


// resource : https://medium.com/factory-mind/websocket-node-js-express-step-by-step-using-typescript-725114ad5fe4
// https://www.nginx.com/blog/websocket-nginx/
const testRouter = require('./routers/test');
const server = require('./server');

server.app.use("/test",testRouter);


// Start WS server
server.WSS.on('connection', (ws,req) => {
    
    console.info("websocket connection open");

    //connection is up, let's add a simple simple event
    ws.on('message', (message) => {

        //log the received message and send it back to the client
        console.log('received: %s', message);
        ws.send(`Hello, you sent -> ${message}`);
    });

    //send immediatly a feedback to the incoming connection
    ws.send('Hi there, I am a WebSocket server');
});


//start our server
server.svr.listen(server.PORT, () => {
    log(`WSS PORT`, process.env.WS_PORT);
    log(`Server started on port ${server.svr.address().port}`);
});

