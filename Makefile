.PHONY: up down wipe
.PHONY: backup-db restore-db
.PHONY: dblogs applogs traefiklogs dblogsf applogsf traefiklogsf


up:
	docker compose up --build -d

down:
	docker compose down

wipe:
	docker compose down -v

backup-db:
	echo "not implemented"

restore-db:
	echo "not implemented"

dblogs:
	docker logs passbolt-db

applogs:
	docker logs passbolt-app

traefiklogs:
	docker logs passbolt-traefik

dblogsf:
	docker logs passbolt-db -f

applogsf:
	docker logs passbolt-app -f

traefiklogsf:
	docker logs passbolt-traefik -f
