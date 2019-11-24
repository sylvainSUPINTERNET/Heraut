'use strict';


const express = require('express');
const router = express.Router();

// middleware that is specific to this router
/*
router.use(function timeLog(req, res, next) {
    console.log('Time: ', Date.now());
    next();
});
*/

router.get('/', function(req, res) {
    res
        .status(200)
        .json({message:  "Hello World !"});
});

module.exports = router;
