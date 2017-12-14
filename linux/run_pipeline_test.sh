results=/home/owl/evowl/metrics/
ontologies=/home/owl/evowl/ontologies/

pipeline=/home/owl/evowl/metrics.harvest.deploy/

timeout=360000
overwrite=false
group=obofoundry

urllist=$pipeline"bigtest.txt"

harvestpipeline=$pipeline"harvest/"
harvestpipelineurl=$harvestpipeline"url"
harvestpipelinefile=$harvestpipeline"file"

while read line
	do 
	url=$(echo $line|tr -d '\040\011\012\015')
	echo $url			
	sh $pipeline"linux/run_pipeline.sh" $pipeline $url $ontologies $results $group $overwrite $timeout
done < $urllist	