$NAME = "ubuntu"
$IMAGE = "curl-ubuntu"

docker stop $NAME
docker rm $NAME

docker run -it -d --net=fluent-network --name $NAME `
    --log-driver=fluentd --log-opt fluentd-address=localhost:24224 `
    --log-opt tag=docker.{{.ImageName}}.{{.Name}}.{{.ID}} `
    $IMAGE
