#!/bin/bash
docker-compose exec ksql-cli  bash -c "ksql http://ksql-server:8088 <<EOF
run script '/tmp/ksql/first.sql';
exit ;
EOF
"
sleep 5

docker-compose exec ksql-cli  bash -c "ksql http://ksql-server:8088 <<EOF
run script '/tmp/ksql/second.sql';
exit ;
EOF
"
