#!/bin/sh

# rsync -avzhe ssh backup.tar root@192.168.0.100:/backups/
TARGET=/home/zeus/evowl/metrics/
METRICS=/home/owl/evowl/metrics/

rsync -avXrz --delete -e ssh $METRICS zeus@130.88.193.79:$TARGET