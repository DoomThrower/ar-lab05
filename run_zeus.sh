#!/bin/env bash
#PBS -l nodes=1:ppn=12
module load plgrid/apps/spark

$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar /people/plgbkumor/ar-lab05/graphs/g10.txt > /people/plgbkumor/ar-lab05/output/g10.out
$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar /people/plgbkumor/ar-lab05/graphs/g100.txt > /people/plgbkumor/ar-lab05/output/g100.out
$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar /people/plgbkumor/ar-lab05/graphs/g1000.txt > /people/plgbkumor/ar-lab05/output/g1000.out
$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar /people/plgbkumor/ar-lab05/graphs/g10000.txt > /people/plgbkumor/ar-lab05/output/g10000.out
$SPARK_HOME/bin/spark-submit --class SparkConnectedComponents --master local[*] $HOME/ar-lab05/jar/connectedcomponents_2.10-1.0.jar /people/plgbkumor/ar-lab05/graphs/g100000.txt > /people/plgbkumor/ar-lab05/output/g100000.out
