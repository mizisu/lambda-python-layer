# /bin/bash
docker build . -t aws-lambda-layer
iid=$(docker create aws-lambda-layer .)
docker cp $iid:/var/task/build/py37-lambda-layer.zip ./py37-lambda-layer.zip
docker rm -f $iid
