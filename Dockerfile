FROM duckietown/rpi-duckiebot-base:master18

COPY run_calibration.sh .

CMD [ "./run_calibration.sh" ]
