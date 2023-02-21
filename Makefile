serve:
	docker compose -f dev.yml up -d
build:
	docker compose build 
	docker compose push

deploy:
	docker compose up -d --build 