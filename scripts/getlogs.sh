#!/bin/bash
cd "$(dirname "$0")"
. ../env.sh

echo "Copying $SERVICENAME:$LOG_FILE to ./logs/"
if [ ! -d "logs" ]; then
  mkdir logs
fi
docker cp $SERVICENAME:$LOG_FILE ./logs
