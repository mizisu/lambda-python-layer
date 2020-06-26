#!/bin/bash
docker build . -t aws-lambda-layer
docker run --name aws-lambda-layer aws-lambda-layer
docker cp aws-lambda-layer:/var/task/build/py37-lambda-layer.zip ./py37-lambda-layer.zip
docker rm -f aws-lambda-layer