



/opt/kafka/bin/kafka-consumer-perf-test.sh  --zookeeper  192.168.0.121:2181   --topic  metricbeat-beat   --messages  4096

/opt/kafka/bin/kafka-consumer-perf-test.sh  --zookeeper  192.168.0.121:2181   --topic  metricbeat-6.0.0   --messages  4096

/opt/kafka/bin/kafka-consumer-perf-test.sh  --zookeeper  192.168.0.121:2181   --topic  sample  --messages  4096



/opt/kafka/bin/kafka-producer-perf-test.sh  --zookeeper  192.168.0.121:2181   --topic  metricbeat-beat   --messages  4096




/opt/kafka/bin/kafka-producer-perf-test.sh  --topic  sample  --num-records 10000  \
                                            --record-size 1048576   --throughput 10   \
                                            --producer-props  acks=1  bootstrap.servers=192.168.0.121:9092,192.168.0.122:9092,192.168.0.123:9092  

/opt/kafka/bin/kafka-producer-perf-test.sh  --topic  sample  --num-records 10000  \
                                            --record-size 500000   --throughput 10   \
                                            --producer-props  acks=1  bootstrap.servers=192.168.0.121:9092,192.168.0.122:9092,192.168.0.123:9092   > log.20180130-2
