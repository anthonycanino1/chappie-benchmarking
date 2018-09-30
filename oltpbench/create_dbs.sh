#https://github.com/oltpbenchmark/oltpbench/wiki/Quickstart

echo "More on information on running bechmarks for creating dbs is at : https://github.com/oltpbenchmark/oltpbench/wiki/Quickstart"
mix, auctionmark,chbenchmark
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


#i=3
#$echo "Running ${benchmarks[i]}"
#./oltpbenchmark -b ${benchmarks[i]} -c config/sample_${benchmarks[i]}_config.xml --create=true --load=true
for bench in "${benchmarks[@]}"; do
	echo "Create db - config/sample_${bench}_config.xml"
	./oltpbenchmark -b ${bench} -c config/sample_${bench}_config.xml --create=true --load=true
done
