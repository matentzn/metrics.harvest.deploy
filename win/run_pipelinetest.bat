@echo off & setlocal enabledelayedexpansion

SET results=D:\metric.pipeline\out
SET ontologies=D:\metric.pipeline\ontologies
SET pipeline=D:\metric.pipeline\metrics.harvest.deploy\
SET timeout=360000

SET urllist=%pipeline%bigtest.txt

SET harvestpipeline=%pipeline%harvest\
SET harvestpipelineurl=%harvestpipeline%url
SET harvestpipelinefile=%harvestpipeline%file


SET search=http://purl.obolibrary.org/obo/
SET replace=obo

for /F "tokens=*" %%A in (%urllist%) do (
SET s=%%A
echo !s!
call %pipeline%win\run_pipeline.bat !pipeline! !s! !ontologies! !results! t !timeout!
)
