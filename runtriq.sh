#!/bin/sh

# for bench in benchmark/paper/*
# do
#   s=${bench##*/}
#   echo "$s"
#   s=${s%.*}
#   echo "$s"
#   python "../TriQ/ir2dag.py" "$bench" "result/paper/${s}_ibmq14_triq.in" &
# done

for infile in ../ExQuS/benchmark/paper/*.in
do
  ./triq "$infile" "${infile%.*}_ibmqx2_triq_fidelity.qasm" "ibmqx4" "0" | tee "${infile%.*}_ibmqx2_triq_fidelity" &
done
