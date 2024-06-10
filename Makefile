.PHONY: up setup

FETCH_APP_PORT = $(if $(APP_PORT),$(APP_PORT),5173)

setup:
	openssl req -newkey rsa:2048 -nodes -keyout ./docker/nginx/certs/selfsigned.key -x509 -days 365 -out ./docker/nginx/certs/selfsigned.crt

up:
	APP_PORT=$(FETCH_APP_PORT) docker compose up
