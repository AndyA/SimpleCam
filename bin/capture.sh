#!/bin/bash

OUTBASE="/opt/pimation/store"
BITRATE=5000000
SEGMENT=10000

SESSION=$( date '+%Y%m%d-%H%M%S' )
OUTDIR="$OUTBASE/$SESSION"

echo "Output to $OUTDIR"
mkdir -p "$OUTDIR"

raspivid                  \
  -o "$OUTDIR/%08d.h264"  \
  --segment $SEGMENT      \
  -b $BITRATE             \
  -t 0                    \
  -n

# vim:ts=2:sw=2:sts=2:et:ft=sh

