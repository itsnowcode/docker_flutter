# docker_flutter
Docker for flutter

## build image
docker build -t itsnow/flutter:{TAG} .

## run container
docker run -it -d --name {CONTAINER_NAME} -v git:/home/node/git itsnow/flutter:{TAG}

## execute container
docker exec -it {CONTAINER_NAME} bash

## push docker hub
docker push itsnow/flutter:{TAG}

