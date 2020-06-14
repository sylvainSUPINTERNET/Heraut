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
        console.log("[INPUTS] : ");
        console.log(msgJson);
        console.log(typeof msgJson);
        const {source, userId, username, data} = msgJson;
        const keyTarget = `${userId}`;

        // flow
        // new user come on page
        // -> get position
        // send position to WS
        // IF userId exist in redis, then update position  THEN return all keys to react to update the positionsOnMap variable
        // IF userId does not existi n redis, just add the user THEN return all keys to react to update the positionsOnMap variable

        console.log("source", source)

        if(source === "community") {
            let response = [];

            redis.get(keyTarget, (err, reply ) => {
                if(err) throw err;

                if(reply !== null){
                    console.log("ALREADY ONE LEMENTé");
                    let dataAtKey = JSON.parse(reply);
                    // get by key and update the value from that key
                    dataAtKey.data.lon = data.lon;
                    dataAtKey.data.lat = data.lat;
                    redis.set(`${userId}`, JSON.stringify(dataAtKey) ,redis.print);

                    console.log("SET OK  here")

                    redis.keys('*', (err, keys) => {
                        if(err) throw err;


                        for(let k in keys){
                            redis.get(keys[k], (err, reply) => {
                                console.log("SET ICI HERE")

                                console.log(k); 
                                if(err) throw err;
                                let lastIndex = keys.length - 1;
                                response = [...response, JSON.parse(reply) ];

                                console.log(response);
                                console.log("GO TO SEND");
                                console.log("LAST INDEX", lastIndex);
                                if(`${k}` === `${lastIndex}`) {
                                    console.log("SEND MESSAGE", response);
                                    ws.send(JSON.stringify(response));
                                    return;
                                }

                            })
                        }

                    });




                   // ws.send({newEntry: JSON.stringify(dataAtKey)});
                } else {
                    console.log("NO LEMENTé");

                    // Init key + value
                    redis.set(`${userId}`, JSON.stringify(msgJson) ,redis.print);

                    redis.get(`${userId}`, (err, reply) => {
                        console.log("SEND NO ELEMENT EXIST");
                        ws.send(JSON.stringify(reply));
                    });



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

