#!/bin/bash
set -eu
TIMESTAMP=$(date +%Y%m%d%H%M%S)
rosrun complete_image_pipeline calibrate_extrinsics -o /data/out-calibrate-extrinsics-$TIMESTAMP
rosrun complete_image_pipeline single_image_pipeline -o /data/out-pipeline-$TIMESTAMP
