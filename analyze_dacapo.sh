benchmarks=(
#batik
#sunflow 
#  avrora 
#  eclipse 
#  h2 
jython 
#  luindex 
#  lusearch 
#  pmd 
#tomcat 
#  tradebeans 
#  tradesoap 
xalan
)

for benchmark in "${benchmarks[@]}"; do
	echo $benchmark
	#/home/rsaxena3/work/chappie/run/run.sh dacapo-9.12-bach.jar "" Harness "-no-validation ${benchmark}"
	#Data Processing
	/usr/bin/python3.5 /home/rsaxena3/work/chappie-graph/data_processing.py -path="./chappie.dacapo/${benchmark}" -benchmark=${benchmark} -destination="processed_data/${benchmark}"
	#Method Attribution script
	/usr/bin/python3.5 /home/rsaxena3/work/chappie-graph/method-attribution.py -path="./chappie.dacapo/${benchmark}" -benchmark=${benchmark} -destination="processed_data/${benchmark}"
	#in case of analyze, point to data processing and graph generaation scripts
done


