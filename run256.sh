runid="2"
RUNDIR=res-tpcc-PXC8-1nodes-1writer-$runid
#for i in 16 64 128 256
#for i in 1 2 4 8 16 64 128 256
for i in 256 128 64 16 8 4 2 1
do
     	OUTDIR=$RUNDIR/
        mkdir -p $OUTDIR

        time=1800
	./tpcc.lua --mysql-host=172.16.0.11 --mysql-user=sbtest --mysql-password=sbtest --mysql-db=sbtest --time=$time --threads=$i --report-interval=1 --tables=10 --scale=100 --trx_level=RR  --db-driver=mysql --report_csv=yes --mysql-ignore-errors=3100,3101,1213,1180 run |  tee -a $OUTDIR/res_thr$i.txt

	sleep 30
	done
