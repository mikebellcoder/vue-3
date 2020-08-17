#!/bin/bash

# Create mongo db data directory, if it doesn't already exist
if [ ! mongo-data ]; then
    mkdir ./mongo-data/
fi

# stop any previous server
docker stop vue_learning_mongodb_1

# docker rm vue-mongo

# docker run -p 27017:27017 -v mongo-data:/data/db --name vue-mongo mongo

docker-compose -p vue_learning -f local-docker-compose.yml up -d --build $@

docker logs -f --tail 20 vue_learning_mongodb_1