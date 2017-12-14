results=/home/owl/evowl/oids.txt

java -Xms2G -Xmx12G -DentityExpansionLimit=100000000 -jar $jar $url $ontologyfile $group $outdir $overwrite $timeout