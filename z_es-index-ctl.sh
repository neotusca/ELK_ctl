ES_URL=192.168.0.141:9200




# 1. create index "customer"
curl -XPUT  $ES_URL/customer?pretty

# 2. verify index "customer"
curl -XGET  $ES_URL/_cat/indices?v

# 3. store document in "customer" index
curl -H 'Content-Type: application/json'  -XPUT  $ES_URL/customer/external/1?pretty  -d '{"name":"John Snow"}'

# 4. retrieve document in "customer" index
curl -H 'Content-Type: application/json'  -XGET  $ES_URL/customer/external/1?pretty 

# 5. delete index "customer"
curl -XDELETE  $ES_URL/customer?pretty

# 6. verify index "customer"
curl -XGET  $ES_URL/_cat/indices?v
