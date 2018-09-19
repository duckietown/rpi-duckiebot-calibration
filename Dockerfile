FROM duckietown/rpi-gui-tools

COPY run_calibration.sh .

CMD [ "./run_calibration.sh" ]
