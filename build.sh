# /bin/bash
docker build . -t aws-lambda-layer
iid=$(docker create aws-lambda-layer .)
docker cp $iid:/var/task/build/py37-lambda-layer.zip ./py37-lambda-layer.zip
docker rm -f $iid


docker cp 2692dc4fdfd0:/var/task/build/venv/lib/python3.7/py37-lambda-layer.zip ./py37-lambda-layer.zip
