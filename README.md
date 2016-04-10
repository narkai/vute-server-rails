# vute-server-rails

Rails server application for **Vute**.

by **Karian Før**

---

*HEIG-VD* • *HE-Arc* • *MASRAD2 - Master of Advanced Studies in Rapid Application Development 2*

---

## Deploy

* Press the *Heroku Deploy Button* below to deploy this application on your own *Heroku* account.
* Name you app.
* Set the `CLIENTS_URL` environment variable with a wildcard `*` if you want to test the *API* from any client.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/lapico/vute-server-rails)

## Example app

* Look at the [documentation](https://vute-server.herokuapp.com/doc).
* Test the example app on `https://vute-server.herokuapp.com` (see request examples below).

## Request examples

* Copy & paste these *cURL* requests into your terminal to try the *API*.
* Feel free to build new requests, create new users...

##### Create a user

```
curl "https://vute-server.herokuapp.com/api/v1/users" -d '{"data":{"type":"users","attributes":{"name":"jim","email":"jim@rod.com","password":"jimy"}}}' -X POST \
  -H "Content-Type: application/vnd.api+json" \
  -H "Accept: application/vnd.api+json"
```

##### Retrieve a token

```
curl "https://vute-server.herokuapp.com/oauth/token" -d '{"grant_type":"password","username":"jim","password":"jimy"}' -X POST \
  -H "Content-Type: application/json"
```

##### More

* All the requests are in the [documentation](https://vute-server.herokuapp.com/doc).

## Client application

* Look at the [vute-client-ember](https://github.com/lapico/vute-client-ember) client application.
