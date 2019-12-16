#!/bin/bash

#https://github.com/rdp/ffmpeg-windows-build-helpers

SCRIPT_ARGS="./cross_compile_ffmpeg.sh"

SCRIPT_ARGS="${SCRIPT_ARGS} --ffmpeg-git-checkout=https://github.com/TouchMonkey/FFmpeg.git"
SCRIPT_ARGS="${SCRIPT_ARGS} --ffmpeg-git-checkout-version=vidstab_full_range"

SCRIPT_ARGS="${SCRIPT_ARGS} --build-ffmpeg-static=y"

SCRIPT_ARGS="${SCRIPT_ARGS} --compiler-flavors=win64"

SCRIPT_ARGS="${SCRIPT_ARGS} --git-get-latest=y"

SCRIPT_ARGS="${SCRIPT_ARGS} --enable-gpl=y"

SCRIPT_ARGS="${SCRIPT_ARGS} --disable-nonfree=n"

SCRIPT_ARGS="${SCRIPT_ARGS} --prefer-stable=y"

SCRIPT_ARGS="${SCRIPT_ARGS} --gcc-cpu-count=4"

#SCRIPT_ARGS="${SCRIPT_ARGS} \"--cflags='-march=native -O2'\""


echo ${SCRIPT_ARGS} "$@"
#${SCRIPT_ARGS} "$@"
${SCRIPT_ARGS} --cflags='-march=native -O2' "$@"
retval=$?
if [ ${retval} -ne 0 ]; then
	echo "ERROR: Build failed with code $retval"
	exit 1
fi


SCRIPT_ARGS="${SCRIPT_ARGS} --high-bitdepth=y"


echo {SCRIPT_ARGS} "$@"
#${SCRIPT_ARGS} "$@"
${SCRIPT_ARGS} --cflags='-march=native -O2' "$@"
retval=$?
if [ ${retval} -ne 0 ]; then
	echo "ERROR: Build failed with code $retval"
	exit 1
fi
