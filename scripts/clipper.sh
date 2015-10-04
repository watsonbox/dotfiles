#!/bin/bash

# Extracts clips from large video file without re-encoding
# Example usage: clipper.sh input.mp4 00:01:00 00:02:00
# Uses fast input search to clip from keyframes but may not be 100% accurate. Check output.
# See http://stackoverflow.com/a/18449609 and https://trac.ffmpeg.org/wiki/Seeking

DURATION=$(( $(date -j -f '%H:%M:%S' "$3" "+%s") - $(date -j -f '%H:%M:%S' "$2" "+%s") ))
OUTPUT_FILENAME="clip_${2//:/-}_${3//:/-}.${1##*.}"

ffmpeg -ss $2 -i "$1" -t $DURATION -c copy $OUTPUT_FILENAME