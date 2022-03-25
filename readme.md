# Planering

## Databas
users
name (255 char)
password (255 char)
id (int)
last login (date)
date created (date)
date updated (date)
body (255 char)

## Routes
index webroot
route inloggning (/login - GET, POST)
route inloggat (/profile - GET)
route create user (/signup - GET, POST)

## View
nunjucks
index
login (form)
signup (form)
profile (om inte inloggad error else body)

### Flowchart
ladda index -> klicka login -> ladda login -> login/signup ->
(om inloggad) show body, else ladda login

## Backend
session
cookies
login POST jämför med databas
signup POST lägg till i databasen
profile GET body om inloggad hämta från databas