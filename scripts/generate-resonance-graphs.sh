#!/bin/bash

NEWX=$(ls -Art /tmp/raw_data_axis*_belt-tension-*.csv | tail -n 2)
DATE=$(date +'%Y-%m-%d-%H%M%S')

outdir=/home/pi/klipper_config/input_shaper
if [ ! -d "${outdir}" ]; then
    mkdir "${outdir}"
fi

~/klipper/scripts/graph_accelerometer.py -c $NEWX -o "${outdir}/belt-tension-resonances-$DATE.png"

