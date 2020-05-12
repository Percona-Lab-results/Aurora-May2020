runid="1"
RUNDIR=res-tpcc-RDS-3nodes-5tables-r5.xlarge-$runid
#for i in 16 64 128 256
#for i in 1 2 4 8 16 64 128 256
for i in 100 1 2 4 8 16 64 128 256
#for i in 100 64
do
     	OUTDIR=$RUNDIR/
        mkdir -p $OUTDIR

        time=1800
	./tpcc.lua --mysql-host=db5.chnjcb9bgxs7.us-east-2.rds.amazonaws.com --mysql-user=admin --mysql-password=Zg8akTHGruktY --mysql-db=sbtest --time=$time --threads=$i --report-interval=1 --tables=5 --scale=100 --trx_level=RR  --db-driver=mysql --report_csv=yes --mysql-ignore-errors=3100,3101,1213,1180 run |  tee -a $OUTDIR/res_thr$i.txt

	sleep 30
	done
