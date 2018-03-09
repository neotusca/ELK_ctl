input {
        kafka {
		bootstrap_servers => "192.168.0.121:9092,192.168.0.122:9092,192.168.0.123:9092"               
                topics => ["filebeat-test"]
 	
		codec => plain {
                	format => "%{message}"
       		}
    	}

}

filter {

        json {
                source => "message"
        }


        grok {
                match => { "message" => "%{NUMBER:syslog_month:int}/%{NUMBER:syslog_day:int}/%{NUMBER:syslog_hour:int}:%{NUMBER:syslog_minutes:int}:%{NUMBER:syslog_seconds:int} %{WORD:syslog_host} %{WORD:syslog_daemon}: %{GREEDYDATA:syslog_message}"}
        }
}

output {
        stdout { codec => json }

        elasticsearch {
                hosts => ["192.168.0.141:9200","192.168.0.142:9200","192.168.0.143:9200"] user => elastic password => changeme
                index => "filebeat-test%{+YYYY.MM.dd}"
        }
}

