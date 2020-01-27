$IMAGE = "fluent/fluentd"
$LINK = "--net=fluent-network"
$NAME = "fluent-agent"

# $PORT1 = "-p=24225:24224"

$CURRENT = Get-Location
$PATH = $CURRENT.Path

docker stop $NAME > $null
docker rm $NAME > $null

docker run -d  $PORT1 $LINK -v $PATH\etc:/fluentd/etc --name $NAME `
    --log-driver=fluentd --log-opt fluentd-address=localhost:24224 `
    --log-opt tag=docker.{{.ImageName}}.{{.Name}}.{{.ID}} `
    $IMAGE
