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

    // if there is not data in redis, we initialise the redis to get announce
    redis.get("community", function(err, reply) {
        if (err) throw err;

        if(reply === null) {
            // no data so init the data table
            redis.set('community', JSON.stringify([]), redis.print);
        }
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
        console.log("receivec")
        console.log("receivec")
        console.log("receivec")
console.log(msgJson)


        console.log("receivec")
        console.log("receivec")
        console.log("receivec")

        const {source, userId, username, data} = msgJson;

        if(source === "community") {

            redis.get('community', (err, communityArrObjectData) => {
                if(communityArrObjectData !== null) {
                    // If user exist replace this user by the new value else, create new entry
                    let userAlreadyExist = JSON.parse(communityArrObjectData).filter(el => el.username === username);
                    if(userAlreadyExist.length > 0) {
                        JSON.parse(communityArrObjectData).forEach( (el, index) => {
                            // Just update position of existing user in array

                            if(el.username === username) {
                                JSON.parse(communityArrObjectData)[index].data.lon = data.lon;
                                JSON.parse(communityArrObjectData)[index].data.lat = data.lat;
                            }


                        });
                        console.log("````````")
                        console.log("````````")
                        redis.set('community', JSON.stringify(JSON.parse(communityArrObjectData)));
                        console.log(JSON.parse(communityArrObjectData))
                        console.log("````````")
                        console.log("````````")

                    } else {
                        redis.set('community', JSON.stringify([...JSON.parse(communityArrObjectData), msgJson]));
                        console.log("user not exist");
                        console.log("DB state")
                        console.log(JSON.parse(communityArrObjectData))
                    }
                }
            });


        }
        console.log(source);
        console.log(userId);
        console.log(username);
        console.log(data);
    });

    //ws.send('Hi there, I am a WebSocket server');
});


//start our server
server.svr.listen(server.PORT, () => {
    log(`HOST from .env > ${process.env.HOST}`);
    log(`PORT from .env > ${process.env.PORT}`);
    log(`WSS PORT`, process.env.WS_PORT);
    log(`Server started on port ${server.svr.address().port}`);
});

