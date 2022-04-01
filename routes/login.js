var express = require('express');
var router = express.Router();
const pool = require('../database');

const bcrypt = require('bcrypt');
const saltRounds = 10;
const myPlaintextPassword = 's0/\/\P4$$w0rD';
const someOtherPlaintextPassword = 'not_bacon';

/* GET users listing. */
router.get('/', async (req, res, next) => {
    await pool.promise()
        .query('SELECT * FROM users')
        .then(([rows, fields]) => {
            res.render('login.njk', { title: 'Express', error: req.session.error });
            req.session.error = "";
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
    //console.log(req.body.username);
    const username = req.body.username;
    

    await pool.promise()
        .query('SELECT * FROM users WHERE name = ?', [username])
        .then(([rows, fields]) => {
            console.log(rows);
            bcrypt.compare(req.body.password, rows[0].password, function(err,result) {
                if (result) {
                    req.session.loginToken = username;
                    res.redirect("/profile");
                } 
                else {
                    req.session.error = "Wrong password/username";
                    res.redirect("/login");
                }
            });
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

module.exports = router;
