#!/bin/bash
echo "Sourcing config.txt"
source ../config.txt

echo "Copying Device.smsetting to /Users/$USER/Library/Application\ Support/SteerMouse\ \&\ CursorSense"
cp ../steermouse/Device.smsetting /Users/$USER/Library/Application\ Support/SteerMouse\ \&\ CursorSense || { echo "Copy failed"; exit 1; }

echo "Copy successful"
