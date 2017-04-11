# DockerDev-Heroku
Docker build for Heroku dev.

This will create a Docker container that contains the basic tools need to interact with the Heroku platform (https://heroku.com/).

## Instructions

To build the container image run: `make build`.

To run the container run: `make run`. By default this will mount the `$HOME/dev/Heroku` directory on your Docker host, which should contain your Heroku application project directories. From within the container this directory will be mapped to `/Heroku`. If your Heroku application project directories are in a different location you can specify that location by passing the PROJECT_DIR parameter to the `make run` command. Example: `make run PROJECT_DIR=/opt/myprojects`. 

## Getting Started With Heroku

The container has done the initial setup for you so you can jump to the Prepare the App step for the language of your choice:

- [Node.js](https://devcenter.heroku.com/articles/getting-started-with-nodejs#prepare-the-app)
- [Ruby](https://devcenter.heroku.com/articles/getting-started-with-ruby#prepare-the-app)
- [Java](https://devcenter.heroku.com/articles/getting-started-with-java#prepare-the-app)
- [PHP](https://devcenter.heroku.com/articles/getting-started-with-php#prepare-the-app)
- [Python](https://devcenter.heroku.com/articles/getting-started-with-python#prepare-the-app)
- [Go](https://devcenter.heroku.com/articles/getting-started-with-go#prepare-the-app)
- [Scala](https://devcenter.heroku.com/articles/getting-started-with-scala#prepare-the-app)
- [Clojure](https://devcenter.heroku.com/articles/getting-started-with-clojure#prepare-the-app)
