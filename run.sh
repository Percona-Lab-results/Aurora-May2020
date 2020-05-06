runid="1"
RUNDIR=res-tpcc-PXC-Operator-3nodes-10tables-r5.xlarge-try2-$runid
#for i in 16 64 128 256
#for i in 1 2 4 8 16 64 128 256
for i in 100 1 2 4 8 16 64 128 256
#for i in 100 64
do
     	OUTDIR=$RUNDIR/
        mkdir -p $OUTDIR

        time=1800
	./tpcc.lua --mysql-host=192.168.168.164 --mysql-user=root --mysql-password=root_password --mysql-db=sbtest --time=$time --threads=$i --report-interval=1 --tables=10 --scale=100 --trx_level=RR  --db-driver=mysql --report_csv=yes --mysql-ignore-errors=3100,3101,1213,1180 run |  tee -a $OUTDIR/res_thr$i.txt

	sleep 30
	done
