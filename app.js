const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const sassMiddleware = require('node-sass-middleware');
const nunjucks = require('nunjucks');

require('dotenv').config();

var indexRouter = require('./routes/index');
var loginRouter = require('./routes/login');
var signupRouter = require('./routes/signup');
var profileRouter = require('./routes/profile');

var app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(sassMiddleware({
  src: path.join(__dirname, 'public'),
  dest: path.join(__dirname, 'public'),
  indentedSyntax: true, // true = .sass and false = .scss
  sourceMap: true
}));
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/login', loginRouter);
app.use('/signup', signupRouter);
app.use('/profile', profileRouter);

nunjucks.configure('view', {
  autoescape: true,
  express: app
});

module.exports = app;
