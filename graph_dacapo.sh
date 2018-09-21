PATH="./processed_data"
DEST="processed_data"

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

  #Method Attribution script
  /usr/bin/python3.5 /home/rsaxena3/work/chappie-graph/method-energy-proportion.py -path=$PATH/$benchmark -benchmark=$benchmark -destination=$DEST/${benchmark}
done
