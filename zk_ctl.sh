



/opt/kafka/bin/zookeeper-shell.sh localhost:2181 <<<"ls /"


/opt/kafka/bin/zookeeper-shell.sh localhost:2181 <<<"ls /brokers"

/opt/kafka/bin/zookeeper-shell.sh localhost:2181 <<<"get /brokers/ids/1"
/opt/kafka/bin/zookeeper-shell.sh localhost:2181 <<<"get /brokers/ids/2"
/opt/kafka/bin/zookeeper-shell.sh localhost:2181 <<<"get /brokers/ids/3"


/opt/kafka/bin/zookeeper-shell.sh localhost:2181 <<<"ls /zookeeper"

/opt/kafka/bin/zookeeper-shell.sh localhost:2181 <<<"get /zookeeper/quota"


/opt/kafka/bin/zookeeper-shell.sh localhost:2181 <<<"ls /config"

/opt/kafka/bin/zookeeper-shell.sh localhost:2181 <<<"get /config/topics/__consumer_offsets"
/opt/kafka/bin/zookeeper-shell.sh localhost:2181 <<<"get /config/topics/topic-sample"
/opt/kafka/bin/zookeeper-shell.sh localhost:2181 <<<"get /config/topics/topic-sample2"
