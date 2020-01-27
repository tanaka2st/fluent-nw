$IMAGE = "fluent-server"
# $IMAGE = "fluent/fluentd"
$LINK = "--net=fluent-network"
$NAME = "fluent-server"

$PORTS = "-p=24224:24224"

$CURRENT = Get-Location
$PATH = $CURRENT.Path

docker stop $NAME > $null
docker rm $NAME > $null

docker run -d $PORTS $LINK -v $PATH\server:/fluentd/etc --name $NAME $IMAGE
