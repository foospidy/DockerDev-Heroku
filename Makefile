build:
	docker build -t heroku-dev .

run:
	docker run -i -v $$HOME/tmp/Heroku/:/Heroku/ -t heroku-dev /bin/bash
