PROJECT_DIR?=$$HOME/dev

build:
	docker build -t heroku-dev .

build-no-cache:
	docker build --no-cache -t heroku-dev .

run:
	docker run -i -v $(PROJECT_DIR)/Heroku/:/Heroku/ -t heroku-dev /bin/bash
