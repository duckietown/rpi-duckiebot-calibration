FROM duckietown/rpi-gui-tools

# TODO: use 'master18' of rpi-gui-tools


COPY run_calibration.sh .

CMD [ "./run_calibration.sh" ]
