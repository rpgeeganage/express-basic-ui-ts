DOCKER_COMPOSE		:= ./docker-compose.yml
PROJECT_NAME		:= basic-ui-express
SERVICE_NAME		:= basic-ui-express

DEV_PROJECT_NAME		:= cmd-basic-ui-express
DEV_SERVICE_NAME		:= cmd-basic-ui-express

install: 
	docker-compose -f ${DOCKER_COMPOSE} run --rm --name ${PROJECT_NAME}-install --entrypoint "npm install" ${SERVICE_NAME}

upd:
	docker-compose -p ${DEV_PROJECT_NAME} -f ${DOCKER_COMPOSE} up -d ${DEV_SERVICE_NAME}

cmd:
	docker-compose -p ${DEV_PROJECT_NAME} -f ${DOCKER_COMPOSE} exec ${DEV_SERVICE_NAME} /bin/sh

down:
	docker-compose -p ${DEV_PROJECT_NAME} down

start:
	docker-compose -p ${PROJECT_NAME} -f ${DOCKER_COMPOSE} up


clean:
	docker rm $$(docker ps -q -f status=exited)
