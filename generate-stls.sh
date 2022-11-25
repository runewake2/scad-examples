#!/bin/bash
for file in ./Designs/**
do
    filePath="${file%.*}"
    inferredPath=$(echo "$filePath" | sed "s/.\/Designs\///g")
    openscad "$filePath.scad" -o "./generated/$inferredPath.stl"
done