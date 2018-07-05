#!/bin/bash
set -eu
TIMESTAMP=$(date +%Y%m%d%H%M%S)
NAME="out-calibrate-extrinsics-$TIMESTAMP"
VNAME="out-pipeline-$TIMESTAMP"
echo "********************"
echo "Place the Duckiebot on the calibration patterns and press ENTER."
read
rosrun complete_image_pipeline calibrate_extrinsics -o /data/$NAME > /data/$NAME.log

echo "********************"
echo "Place the Duckiebot in a lane and press ENTER."
read
rosrun complete_image_pipeline single_image_pipeline -o /data/$NAME > /data/$VNAME.log

echo "DONE. Review images under:"
echo "     /data/$NAME"
echo "     /data/$VNAME"
echo "If you have rpi-simple-server running, go to http://<DUCKIEBOT_NAME>.local:8080"

