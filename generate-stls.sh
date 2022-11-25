#!/bin/bash
for file in ./Designs/*.scad; do
    filePath="${file%.*}"
    inferredPath=$(echo "$filePath" | sed "s/.\/Designs\///g")
    #openscad "$filePath.scad" -o "./generated/$inferredPath.stl"
    echo "$filePath -> $inferredPath"
done