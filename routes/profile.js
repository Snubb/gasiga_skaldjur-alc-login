var express = require('express');
const pool = require('../database');
var router = express.Router();

/* GET users listing. */
router.get('/', async (req, res, next) => {
  await pool.promise()
  .query('SELECT * FROM users WHERE name = ?', [req.session.loginToken])
  .then(([rows, fields]) => {
    console.log(rows);
      if (rows.length > 0) {
        
        res.render("profile.njk", {data: rows})
      } else {
        req.session.error = "You are not logged in";
        res.redirect("/login");

      }
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
