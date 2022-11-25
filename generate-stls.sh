#!/bin/bash
for file in ./Designs/*.scad; do
    filePath="${file%.*}"
    inferredPath=$(echo "$filePath" | sed "s/.\/Designs\///g")
    # For debugging
    # echo "$filePath -> $inferredPath"
    openscad "$filePath.scad" -o "./generated/$inferredPath.stl"
done