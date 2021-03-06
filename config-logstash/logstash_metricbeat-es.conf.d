input {
	kafka {
		bootstrap_servers => "192.168.0.121:9092,192.168.0.122:9092,192.168.0.123:9092"
		topics => ["metricbeat-6.0.0"]
	}
}

filter {
	date {
		match => ["date", "yyyy-MM-dd'T'HH:mm:ss"]
		target => "date_gmt"
		timezone => "Asia/Seoul"
	}

	json {
		source => "message"
	}


}

output {
	#stdout { codec => rubydebug }
	stdout { codec => json }

	elasticsearch {
        hosts => ["192.168.0.141:9200","192.168.0.142:9200","192.168.0.143:9200"] user => elastic password => changeme
        index => "metricbeat-6.0.0-%{+YYYY.MM.dd}"
	}
}
