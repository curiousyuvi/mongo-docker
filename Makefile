#mongo

run-mongo:
	docker compose -f docker-compose-mongo.yml up -d

stop-mongo:
	docker-compose -f docker-compose-mongo.yml down

remove-mongo:
	docker-compose -f docker-compose-mongo.yml down --volumes

hard-remove-mongo:
	docker-compose -f docker-compose-mongo.yml down --volumes