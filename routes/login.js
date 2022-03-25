var express = require('express');
var router = express.Router();
const pool = require('../database');

/* GET users listing. */
router.get('/', async (req, res, next) => {
    await pool.promise()
        .query('SELECT * FROM users')
        .then(([rows, fields]) => {
            res.render('login.njk', { title: 'Express' });
        })
        .catch(err => {
            console.log(err);
            res.status(500).json({
                users: {
                    error: "Error getting users"
                }
            })
        });

});
router.post('/', async (req, res, next) => {
    console.log(req.body);
})
module.exports = router;
