


docker run -d \
    --env SERVER_HTTP_PORT=9000 \
    --name zoonavigator-api \
    elkozmon/zoonavigator-api:0.3.0


docker run -d \
    -p 8000:8000 \
    --env API_HOST=api \
    --env API_PORT=9000 \
    --link zoonavigator-api:api \
    --name zoonavigator-web \
    elkozmon/zoonavigator-web:0.3.0
