echo "-=-=-=-=-=-=-=-= deploy_lambda"
ls

LAMBDA_PATH=$1
SRC=src/
LAMBDA_NAME=${LAMBDA_PATH#${SRC}}
LAMBDA_NAME=${LAMBDA_NAME%/}

echo Building $LAMBDA_NAME inside $LAMBDA_PATH

cd $LAMBDA_PATH
# zip -r $LAMBDA_NAME.zip .
aws lambda update-function-code --function-name $LAMBDA_NAME --zip-file $LAMBDA_NAME.zip
