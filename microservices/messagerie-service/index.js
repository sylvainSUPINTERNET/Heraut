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


    ws.on('close', function close(code,reason) {
        console.log("DISCONNECT MSG code", code);
        console.log("DISCONNECT MSG reason", reason);

        console.log('disconnected');
    });


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
        const {source, userId, username, data, announce, phoneNumber} = msgJson;
        const keyTarget = `${userId}`;
        const keyTargetAnnounce = `${userId}-announce`;

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
                    // TODO bug :
                    //1 -> first msg c'est un array
                    // 2 -> 2 message c'est plus un array ...
                    console.log("reply already one")
                    console.log(reply);
                    let r = JSON.parse(reply);
                    let dataAtKey = "";
                    if(Array.isArray(r)) {
                        dataAtKey = JSON.parse(reply)[0];
                    }else{
                        dataAtKey = JSON.parse(reply);
                    }

                    console.log("DTK",dataAtKey);

                    // get by key and update the value from that key
                    dataAtKey.data.lon = data.lon;
                    dataAtKey.data.lat = data.lat;
                    console.log("ANNOUNCE ? ", announce);
                    if(announce !== null && announce !== "") {
                        console.log("DETECT ANNOUNCE");
                        dataAtKey.announce = announce;
                    }
                    console.log("pHONE NUMBER ? ", phoneNumber);
                    if(phoneNumber !== null && phoneNumber !== "") {
                        console.log("DETECT phoneNumber");
                        dataAtKey.phoneNumber = phoneNumber;
                    }

                    console.log("DATAKEY TO SET", dataAtKey);
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

                                    server.WSS.clients.forEach(function each(client) {
                                        if (client.readyState === server.WebSocket.OPEN) {
                                            //ws.send(JSON.stringify(response));
                                            console.log("ALREADY ELEMENT CLIENT RESPONSE", JSON.stringify(response))
                                            client.send(JSON.stringify(response));
                                        }
                                    });

                                    ws.send(JSON.stringify({"reset_announce_form": 1}));


                                }

                            })
                        }

                    });




                   // ws.send({newEntry: JSON.stringify(dataAtKey)});
                } else {
                    console.log("NO LEMENTé");
                    console.log("IMPEC")
                    console.log(msgJson);

                    const resp = [...[], msgJson];

                    // Init key + value
                    //redis.set(`${userId}`, JSON.stringify(msgJson) ,redis.print);
                    redis.set(`${userId}`, JSON.stringify(resp) ,redis.print);

                    redis.get(`${userId}`, (err, reply) => {
                        console.log("REPLY no element ")
                        console.log(reply)
                        console.log("SEND NO ELEMENT EXIST");
                        server.WSS.clients.forEach(function each(client) {
                            if (client.readyState === server.WebSocket.OPEN) {
                                //client.send(JSON.stringify(reply));
                                console.log("RESPONSE NO ELEMENT", reply);
                                client.send(reply);
                            }
                        });
                        ws.send(JSON.stringify({"reset_announce_form": 1}));
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

