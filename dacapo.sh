#!/bin/bash

if [ -d chappie.dacapo ]
then
	rm -rf chappie.dacapo
fi

mkdir chappie.dacapo

export MODE=3
export ITERS=1

benchmarks=(
  batik
  sunflow 
  avrora 
  eclipse 
  h2 
  jython 
  luindex 
  lusearch 
  pmd 
  tomcat 
  tradebeans 
  tradesoap 
  xalan
)

echo "${benchmarks[0]} ok"
echo "${benchmarks[1]} ok"
echo "${benchmarks[2]} ok"
echo "${benchmarks[3]} ok"
echo "${benchmarks[4]} ok"
echo "${benchmarks[5]} ok"
echo "${benchmarks[6]} ok"
echo "${benchmarks[7]} ok"
echo "${benchmarks[8]} ok"
echo "${benchmarks[9]} ok"
echo "${benchmarks[10]} ok"
echo "${benchmarks[11]} bad"
echo "${benchmarks[12]} ok"

echo "Execution $0 ..."
file_dir=`dirname "$0"`
#${file_dir}/../chappie/run/run.sh bench_jars/dacapo-9.12-bach.jar "" Harness "-no-validation ${benchmarks[1]}"

for benchmark in "${benchmarks[@]}"; do
   echo "Processing $benchmark"
   ${file_dir}/../chappie/run/run.sh dacapo-9.12-bach.jar "" Harness "-no-validation ${benchmark}"
   if [ -d $benchmark]
   then
   	rm -rf $benchmark
   fi
   
   mkdir $benchmark
   
   mv chappie.dacapo-9.12-bach/*.csv $benchmark
   mv $benchmark chappie.dacapo/$benchmark
done
