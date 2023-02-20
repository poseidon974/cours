serve:
	docker container run -dit --rm --publish 8000:80  --volume ./build:/docs registry.actilis.net/docker-images/mkdocs:latest serve -a 0.0.0.0:80
build:
	docker compose build

deploy:
	docker compose up -d --build 