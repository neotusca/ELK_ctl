
#### create topic


#/opt/kafka/bin/kafka-topics.sh --zookeeper 192.168.0.121:2181 --create --topic  metricbeat-test       --partitions  3  --replication-factor 2 
#/opt/kafka/bin/kafka-topics.sh --zookeeper 192.168.0.121:2181 --create --topic  metricbeat-6.0.0      --partitions  6  --replication-factor 2 
#/opt/kafka/bin/kafka-topics.sh --zookeeper 192.168.0.121:2181 --create --topic  metricbeat-6.0.0-01   --partitions  6  --replication-factor 2 


#### delete topic
#/opt/kafka/bin/kafka-topics.sh --zookeeper 192.168.0.121:2181 --delete --topic metricbeat-kafka 



#### retrieve  topic
/opt/kafka/bin/kafka-topics.sh --zookeeper 192.168.0.121:2181 --list


/opt/kafka/bin/kafka-topics.sh --zookeeper 192.168.0.121:2181 --describe


/opt/kafka/bin/kafka-topics.sh --zookeeper 192.168.0.121:2181 --describe  --topic metricbeat-test
/opt/kafka/bin/kafka-topics.sh --zookeeper 192.168.0.121:2181 --describe  --topic metricbeat-6.0.0




#### producer
/opt/kafka/bin/kafka-console-producer.sh --broker-list  192.168.0.121:9092 --topic metricbeat-test
/opt/kafka/bin/kafka-console-producer.sh --broker-list  192.168.0.121:9092 --topic metricbeat-6.0.0


#### consumer
/opt/kafka/bin/kafka-console-consumer.sh --zookeeper  192.168.0.121:2181 --topic metricbeat-test   --from-beginning
/opt/kafka/bin/kafka-console-consumer.sh --zookeeper  192.168.0.121:2181 --topic metricbeat-6.0.0  --from-beginning


#### consumer offset
/opt/kafka/bin/kafka-consumer-offset-checker.sh    --zookeeper  192.168.0.121:2181  --group logstash   --topic metricbeat-6.0.0 
/opt/kafka/bin/kafka-consumer-offset-checker.sh    --zookeeper  192.168.0.121:2181  --group logstash   --topic metricbeat-test


/opt/kafka/bin/kafka-consumer-groups.sh            --zookeeper  192.168.0.123:2181  --list



/opt/kafka/bin/kafka-verifiable-consumer.sh      --broker-list  192.168.0.121:9092  --group-id logstash  --topic metricbeat-6.0.0 
/opt/kafka/bin/kafka-verifiable-consumer.sh      --broker-list  192.168.0.121:9092  --group-id logstash  --topic metricbeat-test

