.PHONY: console linter

console:
	ruby bin/console

linter:
	bundle exec rubocop
