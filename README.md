# lambda-python-layer
AWS lambda layer build script for Python

## How to build
- Add dependencies to requirements.txt
- Run build script
```shell
 # After build completed, can get py37-lambda-layer.zip file
./build.sh
```

## Usage
 - AWS CLI
 - Web Console

### AWS CLI
#### Upload zip to S3
```shell
aws s3 cp py37-lambda-layer.zip s3://[BUCKET_NAME]/py37-lambda-layer.zip
```
#### Create lambda layer
```shell
aws lambda publish-layer-version \
    --layer-name [LAYER_NAME] \
    --description "Python layer created by script" \
    --content S3Bucket=[BUCKET_NAME],S3Key=py37-lambda-layer.zip \
    --compatible-runtimes python3.7
```
#### Create function
```shell
aws lambda create-function --function-name [FUNCTION_NAME] \
--layers arn:aws:lambda:us-east-2:123456789012:layer:my-layer:3
```

 TODO
 - use response arn
 - add console
