input {
	kafka {
		bootstrap_servers => "192.168.0.121:9092,192.168.0.122:9092,192.168.0.123:9092"
		topics => ["collectd-test"]
	}
}

filter {
	json {
		source => "message"
	}	

	mutate {
   		gsub => ["message", "\[", "",
			"message", "\]", ""
		]
  	}

}

output {
	#stdout { codec => rubydebug }
	stdout { codec => json }

	elasticsearch {
        hosts => ["192.168.0.141:9200","192.168.0.142:9200","192.168.0.143:9200"] user => elastic password => changeme
        index => "collectd-test%{+YYYY.MM.dd}"
	}
}
