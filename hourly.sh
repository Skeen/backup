#!/bin/bash

BACKUP_CONTAINER=$(docker ps | grep "iomoss/backup" | cut -d' ' -f1)

docker exec -it $BACKUP_CONTAINER rsnapshot hourly
