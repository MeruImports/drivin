.PHONY: console linter build bash

build:
	docker-compose build

console:
	docker-compose run --rm app ruby bin/console

linter:
	docker-compose run --rm app bundle exec rubocop

bash:
	docker-compose run --rm app bash

tests:
	docker-compose run --rm app bundle exec rspec
