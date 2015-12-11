# Dockerized json-server

[json-server](https://github.com/typicode/json-server) is a very nice REST API that serves a json file. It's pretty nice to test AngularJS implementation, http clients and so on.

Docker-json-server helps to launch this service without the need of installing node.js and dependecies

# Usage

Default working directory is "`/srv`", exposed port is "3000".


To serve "db.json" file, do:

```bash
docker run --rm    \
    -v $(pwd):/srv \
    -p 3000:3000   \
    metal3d/json-server --watch db.json
```

You may now access http://127.0.0.1:3000

You may change uid:gid to use yours and be able to read/write file:

```
docker run --rm    \
    -v $(pwd):/srv \
    -p 3000:3000   \
    --user="$(id -u):$(id -g)" \
    metal3d/json-server --watch db.json
```
