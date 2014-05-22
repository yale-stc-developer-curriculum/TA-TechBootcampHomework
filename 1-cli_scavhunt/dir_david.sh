#!/bin/bash
#STARTDIR="$(pwd)"
#echo $STARTDIR
BREADTH=10
#DEPTH=4

# CURRENT STATUS 2014.05.15 20.50 EDT:
# CORRECTLY GENERATES FOLDER TREE OF BREADTH = $BREADTH
# AND OF DEPTH = 2.

function gen10 {
    for i in `seq 1 $BREADTH`; do
      NUMRAN=$RANDOM
      mkdir -p $NUMRAN
    done
}

function foreach10 {
  for j in $(ls -1 .); do
    cd $j
    gen10
    cd ..
  done
}

gen10
foreach10

# THIS CODE WAS USED FOR TESTING NESTING
#for i in `seq 1 10`; do
#  gen10
#  for j in `seq 1 25`; do
#    NUMRAN=$RANDOM
##    mkdir -p $NUMRAN
#    ITERATION="'$i' + '.' + '$j' + ' ' + '$NUMRAN'"
#    echo $ITERATION
#  done
#  cd "$STARTDIR"
#done
