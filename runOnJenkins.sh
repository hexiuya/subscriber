docker stop subscriber
docker rm subscriber
docker image rm subscriber:0.0.1
docker build . -t subscriber:0.0.1
docker run -d -p 8118:8118 --name subscriber --network crm-network --network-alias alias-subscriber --link crm-test-mysql subscriber:0.0.1
