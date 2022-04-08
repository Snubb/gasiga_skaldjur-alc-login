var express = require('express');
const pool = require('../database');
var router = express.Router();

/* GET users listing. */
router.get('/', async (req, res, next) => {
  /*await pool.promise()
  .query('SELECT * FROM users WHERE name = ?', [req.session.loginToken])
  .then(([rows, fields]) => {
    console.log(rows);
      if (rows.length > 0) {
        
        //res.render("profile.njk", {data: rows, token: req.session.loginToken})
      } else {
        req.session.error = "You are not logged in";
        res.redirect("/login");
        return
      }
  })
  .catch(err => {
      console.log(err);
      res.status(500).json({
          users: {
              error: "Error getting users"
          }
      })
  });*/
  if (!req.session.loginToken) {
    req.session.error = "You are not logged in";
    return res.redirect("/login");
  }
  const user = await pool.promise()
  .query('SELECT users.name, users.body AS userbody FROM users WHERE name = ?', [req.session.loginToken])
  .then(([rows]) => {
    console.log(rows[0])
    return rows[0];
  })
  await pool.promise()
  .query('SELECT meeps.* FROM meeps JOIN users ON users.id = meeps.user_id WHERE meeps.user_id = ?', [req.session.uid])
  .then(([rows, fields]) => {
    console.log("test");
    console.log(rows)
    console.log(rows[1]);
      res.render("profile.njk", {data: rows, token: req.session.loginToken, user: user})
  })
});

router.post('/editBody', async (req, res, next) => {
  //console.log(req.body.username);
  const newBody = req.body.newBody;
  const username = req.body.username;
  console.log(newBody);
  console.log(username);
  await pool.promise()
  .query("UPDATE users SET body = ? WHERE name = ?", [newBody, username])
  .then(([rows]) => {
    res.redirect("/profile");
  })
});
module.exports = router;
