#!/bin/bash

set -e

source /home/software/docker/env.sh

TIMESTAMP=$(date +%Y%m%d%H%M%S)
NAME="out-calibrate-extrinsics-$TIMESTAMP"
VNAME="out-pipeline-$TIMESTAMP"

echo "********************"
echo "Position the checkerboard pattern in front of the Duckiebot and press ENTER."
read
roslaunch duckietown intrinsic_calibration.launch veh:=$ROS_MASTER

