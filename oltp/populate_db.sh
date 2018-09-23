#https://github.com/oltpbenchmark/oltpbench/wiki/Quickstart

echo "More on information on running bechmarks for creating dbs is at : https://github.com/oltpbenchmark/oltpbench/wiki/Quickstart"
benchmarks=(
	mix
	auctionmark
	chbenchmark
	epinions
	jpab
	link
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

i=1
echo "Running ${benchmarks[i]}"
./oltpbenchmark -b ${benchmarks[i]} -c config/sample_${benchmarks[i]}_config.xml --create=true --load=true
#or bench in $oltp_bench
#do
	#./oltpbenchmark -b ${bench} -c config/sample_${bench}_config.xml --create=true --load=true
#done
