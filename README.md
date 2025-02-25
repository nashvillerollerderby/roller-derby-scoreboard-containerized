# Roller Derby Scoreboard Containerized

This repository hosts code to build and run the [official Roller Derby scoreboard tool](https://github.com/rollerderby/scoreboard).

Images are built to support both amd64 and arm64 architectures, and are uploaded [here](https://hub.docker.com/r/jeddai/nashvillerollerderby).

## Build Arguments 

The following are build arguments that should be supplied to docker when the image is being built.

| Argument | Description                                                      | Example  |
|:---------|:-----------------------------------------------------------------|:---------|
| `version` | The version of the CRG Scoreboard to install in the docker image | `v2025.5` |

## Environment Variables

The following environment variables only apply when `docker-compose` is being used. 
In order to set the defaults for everything, copy `default.env` to a new file named `.env`.

| Env Variable               | Default             | Description                                                                                                       |
|:---------------------------|:--------------------|:------------------------------------------------------------------------------------------------------------------|
| `VERSION`                  | `v2025.5`           | The version of the CRG Scoreboard to install in the docker image. (Only applies if `docker-compose build` is run) |
| `PORT`                     | `8000`              | The port on the host to which the container should bind.                                                          |
| `AUTOSAVE_MOUNT_LOCATION`  | `./mount/autosave`  | The directory on the host to which to bind the scoreboard's autosave directory                                    |
| `LOGS_MOUNT_LOCATION`      | `./mount/logs`      | The directory on the host to which to bind the scoreboard's logs directory                                        |
| `GAME_DATA_MOUNT_LOCATION` | `./mount/game-data` | The directory on the host to which to bind the scoreboard's game-data directory                                   |

## Development

### Getting Started

```shell
# Copy the default `docker-compose` env variables and make any modifications needed
cp default.env .env
# Build the docker image
docker-compose build
# Run the scoreboard
docker-compose up -d
```
