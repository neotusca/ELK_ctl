
## to logstash 133

while(true)
do
    snmptrap -v 2c -c public 192.168.0.133:1062  "" ucdStart sysContact.0 s "snmptrap test is running from kafka3(192.168.0.123) to logstash-2(192.168.0.133)"
    sleep 10
done
