#./tpcc.lua --mysql-host=172.16.0.1 --mysql-user=sbtest --mysql-password=sbtest --mysql-db=sbtest --time=300 --threads=64 --report-interval=1 --tables=100 --scale=10 --db-driver=mysql --use_fk=0 --force_pk=1 --trx_level=RC prepare
#-hdatabase-2.chnjcb9bgxs7.us-east-2.rds.amazonaws.com -uadmin -pZg8akTHGruktY
./tpcc.lua --mysql-host=database-2.chnjcb9bgxs7.us-east-2.rds.amazonaws.com --mysql-user=admin --mysql-password=Zg8akTHGruktY --mysql-db=sbtest --time=300 --threads=10 --report-interval=1 --tables=10 --scale=100 --db-driver=mysql --use_fk=0 --force_pk=1 --trx_level=RC prepare
