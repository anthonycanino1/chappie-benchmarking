#!/bin/bash

rm -rf chappie.dacapo
mkdir chappie.dacapo

export MODE=3
export ITERS=2

benchmarks=(
  batik
  sunflow 
#  avrora 
#  eclipse 
#  h2 
#  jython 
#  luindex 
#  lusearch 
#  pmd 
#  tomcat 
#  tradebeans 
#  tradesoap 
#  xalan
)

for benchmark in "${benchmarks[@]}"; do
  echo $benchmark
  /home/acanino1/Projects/chappie/run/run.sh dacapo-9.12-bach.jar "" Harness "-no-validation ${benchmark}"
  #mkdir $benchmark
  #mv chappie.dacapo-9.12-bach/*.csv $benchmark
  #mv $benchmark chappie.dacapo/$benchmark
done
