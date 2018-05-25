#!/bin/bash

fs=`jq -r '.freesurfer' config.json`

form=`jq -r '.filetype' config.json`

source $FREESURFER_HOME/SetUpFreeSurfer.sh

mris_convert $fs/surf/lh.pial surfaces/lh.pial.$form

mris_convert $fs/surf/rh.pial surfaces/rh.pial.$form

mris_convert $fs/surf/lh.white surfaces/lh.white.$form

mris_convert $fs/surf/rh.white surfaces/rh.white.$form

mris_convert $fs/surf/lh.smoothwm surfaces/lh.smoothwm.$form

mris_convert $fs/surf/rh.smoothwm surfaces/rh.smoothwm.$form

mris_convert $fs/surf/lh.inflated surfaces/lh.inflated.$form

mris_convert $fs/surf/rh.inflated surfaces/rh.inflated.$form

