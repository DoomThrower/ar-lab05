#!/bin/bash

if [ -z "$SPARK_HOME" ]; then
	#modify at leisure
    export SPARK_HOME="/home/lsekalski/spark-1.5.1-bin-hadoop2.6"
fi  

$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar graphs/g10.txt > output/g10.out
$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar graphs/g100.txt > output/g100.out
$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar graphs/g1000.txt > output/g1000.out
$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar graphs/g10000.txt > output/g10000.out
$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar graphs/g100000.txt > output/g100000.out
