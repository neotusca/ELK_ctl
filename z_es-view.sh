ES_URL=192.168.0.141:9200



## Cluster Info.
echo;echo
echo "ES-health #############################################"
#curl localhost:9200/_cat/health?v
curl $ES_URL/_cat/health?v
echo "ES-master #############################################"
curl $ES_URL/_cat/master?v
echo "ES-nodes #############################################"
curl $ES_URL/_cat/nodes?v

## Data Info.
echo;echo
echo "ES-indices #############################################"
curl $ES_URL/_cat/indices?v
echo "ES-count #############################################"
curl $ES_URL/_cat/count?v

## Storage Info.
echo;echo
echo "ES-Allocation #############################################"
curl $ES_URL/_cat/allocation?v
echo "ES-shards #############################################"
curl $ES_URL/_cat/shards?v
echo "ES-segments #############################################"
curl $ES_URL/_cat/segments?v
echo "ES-recovery #############################################"
curl $ES_URL/_cat/recovery?v


## Process Info.
echo;echo
echo "ES-tasks #############################################"
curl $ES_URL/_cat/tasks?v

echo "ES-pending_tasks #############################################"
curl $ES_URL/_cat/pending_tasks?v

echo "ES-aliases #############################################"
curl $ES_URL/_cat/aliases?v

echo "ES-thread_pool #############################################"
curl $ES_URL/_cat/thread_pool?v

echo "ES-plugins #############################################"
curl $ES_URL/_cat/plugins?v

echo "ES-fielddata #############################################"
curl $ES_URL/_cat/fielddata?v

echo "ES-nodeattrs #############################################"
curl $ES_URL/_cat/nodeattrs?v

echo "ES-repositories #############################################"
curl $ES_URL/_cat/repositories?v

echo "ES-templates #############################################"
curl $ES_URL/_cat/templates?v









############## example #########################################
#root@harvana-lubuntu1604:/sdb2-vg0-lvol0/es-data/nodes/0/indices# curl localhost:9200/_cat
#=^.^=
#/_cat/allocation
#/_cat/shards
#/_cat/shards/{index}
#/_cat/master
#/_cat/nodes
#/_cat/tasks
#/_cat/indices
#/_cat/indices/{index}
#/_cat/segments
#/_cat/segments/{index}
#/_cat/count
#/_cat/count/{index}
#/_cat/recovery
#/_cat/recovery/{index}
#/_cat/health
#/_cat/pending_tasks
#/_cat/aliases
#/_cat/aliases/{alias}
#/_cat/thread_pool
#/_cat/thread_pool/{thread_pools}
#/_cat/plugins
#/_cat/fielddata
#/_cat/fielddata/{fields}
#/_cat/nodeattrs
#/_cat/repositories
#/_cat/snapshots/{repository}
#/_cat/templates
