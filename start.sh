#!/bin/bash

export CONFIG_FOLDER=$PWD/config/
sudo mount /dev/sde5 /backup/
export BACKUP_FOLDER=/backup/
docker run -v $CONFIG_FOLDER:/srv/ -v $BACKUP_FOLDER:/backup/ -d iomoss/backup
