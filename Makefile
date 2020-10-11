BASE = github.com/mkadiri
IMAGE = react-microservice
TAG = local

build:
	docker build -t ${BASE}/${IMAGE}:${TAG} .

shell:
	docker run -ti \
		-v ${PWD}/app:/app \
		-v /app/node_modules \
		-p 3001:3000 \
		-e CHOKIDAR_USEPOLLING=true \
		${BASE}/${IMAGE}:${TAG} sh