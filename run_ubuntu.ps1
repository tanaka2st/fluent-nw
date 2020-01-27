$NAME = "ubuntu"
$IMAGE = "curl-ubuntu"

docker stop $NAME
docker rm $NAME

docker run -it -d --net=fluent-network --name $NAME $IMAGE
