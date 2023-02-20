serve:
	docker compose -f dev.yml up -d
build:
	docker compose build

deploy:
	docker compose up -d --build 