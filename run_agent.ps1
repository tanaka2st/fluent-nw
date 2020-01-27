$IMAGE = "fluent/fluentd"
$LINK = "--net=fluent-network"
$NAME = "fluent-agent"

# $PORT1 = "-p=24225:24224"

$CURRENT = Get-Location
$PATH = $CURRENT.Path

docker stop $NAME > $null
docker rm $NAME > $null

docker run -d  $PORT1 $LINK -v $PATH\agent:/fluentd/etc --name $NAME $IMAGE
