# vute-server

Server application for **Vute**.

**Karian Føhr**

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/vuteOrg/server)

---

*HEIG-VD* • *HE-Arc* • *MASRAD2 - Master of Advanced Studies in Rapid Application Development 2*

---

# cURL request examples

### Create a user

curl "https://vute-server.herokuapp.com/api/v1/users" -d '{"data":{"type":"users","attributes":{"name":"jim","email":"jim@rod.com","password":"jimy"}}}' -X POST \
  -H "Content-Type: application/vnd.api+json" \
  -H "Accept: application/vnd.api+json"

### Retrieve authorization for this user

curl "https://vute-server.herokuapp.com/oauth/token" -d '{"grant_type":"password","username":"jim","password":"jimy"}' -X POST \
  -H "Content-Type: application/json"
