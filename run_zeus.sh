#!/bin/env bash
#PBS -l nodes=1:ppn=12
module load plgrid/apps/spark

$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar graphs/g10.txt > out/g10.out
$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar graphs/g100.txt > out/g100.out
$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar graphs/g1000.txt > out/g1000.out
$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar graphs/g10000.txt > out/g10000.out
$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar graphs/g100000.txt > out/g100000.out
