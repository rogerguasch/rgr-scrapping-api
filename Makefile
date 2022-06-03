current-dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

.PHONY: database-create
database-create:
	docker exec rgr-scrapping-api php bin/console doctrine:database:create
