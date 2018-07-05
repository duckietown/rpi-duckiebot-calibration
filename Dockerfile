FROM duckietown/rpi-duckiebot-base

COPY run_calibration.sh .

CMD run_calibration.sh
