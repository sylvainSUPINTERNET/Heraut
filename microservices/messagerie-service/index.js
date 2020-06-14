'use strict';
const log = console.log;

// resource : https://medium.com/factory-mind/websocket-node-js-express-step-by-step-using-typescript-725114ad5fe4
// https://www.nginx.com/blog/websocket-nginx/
const testRouter = require('./routers/test');
const server = require('./server');
const redis = server.redisClient;

server.app.use("/test",testRouter);


// Start WS server
server.WSS.on('connection', (ws,req) => {
    console.info("websocket connection open");

    ws.on('message', async (message) => {

        /*
        Community payload e.g

        payload.source = "community";
        payload.userId = this.state.userDetails.userId;
        payload.username = this.state.userDetails.username;
        payload.data = this.state.userDetails;
         */

        const msgJson = JSON.parse(message);
        console.log("[INPUTS] : ", msgJson);
        const {source, userId, username, data} = msgJson;
        const keyTarget = `${userId}`;

        if(source === "community") {
            redis.get(keyTarget, (err, reply ) => {
                if(err) throw err;

                if(reply !== null){
                    let dataAtKey = JSON.parse(reply);
                    // get by key and update the value from that key
                    dataAtKey.data.lon = data.lon;
                    dataAtKey.data.lat = data.lat;
                    redis.set(`${userId}`, JSON.stringify(dataAtKey) ,redis.print);
                    ws.send({newEntry: dataAtKey});
                } else {
                    // Init key + value
                    redis.set(`${userId}`, JSON.stringify(msgJson) ,redis.print);
                    ws.send({newEntry: msgJson});

                }
            })
        }


    });
});


//start our server
server.svr.listen(server.PORT, () => {
    log(`HOST from .env > ${process.env.HOST}`);
    log(`PORT from .env > ${process.env.PORT}`);
    log(`WSS PORT`, process.env.WS_PORT);
    log(`Server started on port ${server.svr.address().port}`);
});

