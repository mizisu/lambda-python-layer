# python-lambda-layer
AWS lambda layer build script for Python

## How to build
- Add dependencies to requirements.txt
- Run build script
```shell script
 # After build completed, can get py37-lambda-layer.zip file
./build.sh
```

## Usage
 - AWS CLI and jq
 - Web Console

### Using Web console
...

### Using AWS CLI and jq
#### Upload zip to S3
- BUCKET_NAME: 
```shell script
aws s3 cp py37-lambda-layer.zip s3://[BUCKET_NAME]/py37-lambda-layer.zip
```
#### Create lambda layer
You can get layer ARN after running script
- BUCKET_NAME:
- LAYER_NAME:
```shell script
aws lambda publish-layer-version \
    --layer-name [LAYER_NAME] \
    --description "Python layer created by script" \
    --content S3Bucket=[BUCKET_NAME],S3Key=py37-lambda-layer.zip \
    --compatible-runtimes python3.7 | jq .LayerVersionArn
```
#### Create function
- FUNCTION_NAME
- LAYER_ARN
```shell script
aws lambda create-function --function-name [FUNCTION_NAME] \
--layers [LAYER_ARN]
```

 TODO
 - use response arn
 - add console
