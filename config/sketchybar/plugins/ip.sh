#!/bin/sh

sketchybar --set ip label=$((ipconfig getifaddr en1 | ipconfig getifaddr en0) || echo "none")
