init: init-ci
init-ci: docker-down-clear docker-pull docker-build docker-up

up: docker-up
down: docker-down
restart: down up


#LOCAL
docker-up:
	docker compose up -d

docker-down:
	docker compose down --remove-orphans

docker-down-clear:
	docker compose down -v --remove-orphans

docker-pull:
	docker compose pull

docker-build:
	docker compose build --pull


#LINT
lint:
	docker compose run instagram-rest-api flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
	docker compose run instagram-rest-api flake8 . --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics

lint-fix:
	docker compose run instagram-rest-api autopep8 --in-place --aggressive --recursive .


#TESTS
test:
	docker compose run instagram-rest-api pytest tests/tests.py


#RELEASE
release: release-build release-push

release-build:
	docker build --platform=linux/amd64 -f ./docker/Dockerfile -t grabsu/instagram-rest-api:1.0.0 .

release-push:
	docker push grabsu/instagram-rest-api:1.0.0

