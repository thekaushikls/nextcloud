# Nextcloud

## Notes
1. Setting `NEXTCLOUD_ADMIN_USER` and `NEXTCLOUD_ADMIN_PASSWORD` variables help admin account creation. This runs every time the containers are started and better to comment out parts of the **docker-compose.yml** file after the first run to avoid going into init loop on every start.
2. The pre/post installation hooks run only (when `config.php` file is not present / detected) on first install.

## Pending Tasks
1. Cron jobs need to set manually.
2. External Storage support (currently) needs to be manually enabled post installation.
3. Local (LAN) DNS names are not automatically setup on host.

## Basic Usage
- `docker compose up -d` to start containers the first time.
- `docker compose stop` to stop / pause containers for maintenance.
- `docker compose start` to resume containers.
- `docker compose down` to take down instance.

## Debugging
- `docker ps` to view all docker processes.
- `docker compose ls` to list all _compose_ instances.
- `docker logs -f ${DOCKER_CONTAINER_NAME}` to watch real-time logs.
- `docker exec -it ${DOCKER_CONTAINER_NAME} [COMMAND]` to run command inside container.
    - `docker exec -it ${DOCKER_CONTAINER_NAME} bash` opens shell inside container.

## Advanced
- `docker compose down -v --rmi local` to take down instance, remove volumes, and images.
- `docker compose up -d --build` to rebuild containers and volumes.
