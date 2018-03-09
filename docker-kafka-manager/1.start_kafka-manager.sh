
docker run -d \
    -p 9000:9000 \
    --env ZK_HOSTS=192.168.0.121:2181 \
    --name kafka-manager \
    intropro/kafka-manager:1.3.3.4
    #--env KM_ARGS=-Djava.net.preferIPv4Stack=true \
