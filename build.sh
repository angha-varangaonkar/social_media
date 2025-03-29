docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID angha16/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID angha16/$JOB_NAME:latest

docker push angha16/$JOB_NAME:$BUILD_ID

docker push angha16/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID angha16/$JOB_NAME:$BUILD_ID angha16/$JOB_NAME:latest
