@echo off & setlocal enabledelayedexpansion

SET results=D:\metric.pipeline\out
SET ontologies=D:\metric.pipeline\ontologies
SET pipeline=D:\metric.pipeline\metrics.harvest.deploy\
SET timeout=360000

SET urllist=%pipeline%smalltest.txt

SET harvestpipeline=%pipeline%harvest\
SET harvestpipelineurl=%harvestpipeline%url
SET harvestpipelinefile=%harvestpipeline%file

for /F "tokens=*" %%A in (%urllist%) do (
SET s=%%A
echo !s!
call %pipeline%win\run_pipeline.bat !pipeline! !s! !ontologies! !results! obofoundry t !timeout!
)
