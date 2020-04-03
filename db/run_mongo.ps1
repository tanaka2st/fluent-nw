$IMAGE = "mongo"

$LINK = "--net=fluent-network"
$NAME = "fluent-mongo"

$PORTS = "-p=27017:27017"

# $CURRENT = Get-Location
# $PATH = $CURRENT.Path

docker stop $NAME > $null
docker rm $NAME > $null

docker run -d $PORTS $LINK --name $NAME `
    --log-driver=fluentd --log-opt fluentd-address=localhost:24224 `
    --log-opt tag=docker.{{.ImageName}}.{{.Name}}.{{.ID}} `
    $IMAGE
