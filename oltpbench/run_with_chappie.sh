

benchmarks=(
	mix
	auctionmark
	chbenchmark
	epinions
	jpab
	linkbench
	mysmixed
	noop
	seats
	smallbank
	tatp
	tpcc
	tpch
	twitter
	wikipedia														ycsb
)


for benchmark in "${benchmarks[@]}"; do
   echo "Processing $benchmark"  
   sudo /home/kmahmou1/chappie_project/chappie/run/run.sh oltp.jar "" com.oltpbenchmark.DBWorkload  "-b ${benchmark} -c config/sample_${benchmark}_config.xml --execute=true -s 5 -o outputfile" "-Dlog4j.configuration=log4j.properties"
   if [ -d $benchmark]
   then
   	rm -rf $benchmark
   fi
   
   mkdir $benchmark
   
   mv oltp.jar/*.csv $benchmark
   mv $benchmark chappie.dacapo/$benchmark
done
