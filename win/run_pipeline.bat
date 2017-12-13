SET pipeline=%1
SET url=%2
SET file=%3
SET outdir=%4
SET overwrite=%5
SET timeout=%6

SET harvestpipeline=%pipeline%harvest\
SET harvestpipelineurl=%harvestpipeline%url
SET harvestpipelinefile=%harvestpipeline%file

:: Collect the data: Execute all jars in harvest URL directory
cd %harvestpipelineurl%
for /r %%i in (*.jar) do java -Xms2G -Xmx10G -jar %%i %url% %file% %outdir% %overwrite% %timeout%

:: Collect the data: Execute all jars in harvest FILE directory
cd %harvestpipelinefile%
for /r %%i in (*.jar) do java -Xms2G -Xmx10G -jar %%i %url% %file% %outdir% %overwrite% %timeout%

cd %pipeline%