all:
	cd ./srcs && docker compose up --build

down:
	cd ./srcs && docker compose down             # it removes all cntrs, networks, volumes defined in the docker-compose.yml file
