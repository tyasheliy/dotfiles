#!/bin/sh

if [[ $(curl https://apple.com) ]]; then
  sketchybar --set net icon=􀙇
else 
  sketchybar --set net icon=􀙈
fi
