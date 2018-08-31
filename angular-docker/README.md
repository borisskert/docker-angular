# angular-docker

## How it works

* docker environment variables are read by docker-entrypoint.sh and creates a `env.json` file hosted by the nginx webserver
* the angular frontend is reading the `env.json` and providing the config to your app by the `AppConfig` class
* if hosted locally via cli the mocked values are defined in `./src/assets/env.json` file

## Build this solution

### Via cli

```bash
$ npm run build
```

### Within docker

```bash
$ docker-compose --file build.docker-compose.yml down --remove-orphans && docker-compose --file build.docker-compose.yml up --build 
```

## Run this solution

### Via cli

```bash
$ npm run start
```

### Within docker

```bash
$ docker-compose down --remove-orphans && docker-compose up --build
```
