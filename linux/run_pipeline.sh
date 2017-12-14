#!/bin/bash
pipeline=$1
url=$2
ontologyfile=$3
outdir=$4
group=$5
overwrite=$6
timeout=$7

harvestpipeline=$pipeline"harvest/"
harvestpipelineurl=$harvestpipeline"url/"
harvestpipelinefile=$harvestpipeline"file/"


# Collect the data: Execute all jars in harvest URL directory (this is necessary to be done first, to obtain the downloaded ontology)
for file in `ls -p "$harvestpipelineurl"`; 
do
	jar=$harvestpipelineurl$file
	echo $jar
	java -Xms2G -Xmx12G -DentityExpansionLimit=100000000 -jar $jar $url $ontologyfile $group $outdir $overwrite $timeout
done

# Collect the data: Execute all jars in harvest FILE directory
 
for file in `ls -p "$harvestpipelinefile"`; 
do
	jar=$harvestpipelinefile$file
	echo $jar
	java -Xms2G -Xmx12G -DentityExpansionLimit=100000000 -jar $jar $url $ontologyfile $group $outdir $overwrite $timeout
done
