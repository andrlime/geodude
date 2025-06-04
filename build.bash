#!/bin/bash

temp_file_name="temp.pdf"

SRC_FOLDER="./"
EXPORT_FOLDER="./export"
CONFIG="export-config.yml"

typst compile ${SRC_FOLDER}/main.typ $temp_file_name

name=$(yq '.file_format.name' $CONFIG | tr '[:upper:]' '[:lower:]' | tr ' ' '_')
date=$(date "$(yq '.file_format.date_format' $CONFIG)" | tr '[:upper:]' '[:lower:]')
folder=$(date "$(yq '.file_format.folder_format' $CONFIG)" | tr '[:upper:]' '[:lower:]')
    
base="${name}__resume__${date}"
dest="${EXPORT_FOLDER}/${folder}/${base}.pdf"
suffix=1

while [ -e "$dest" ]; do
    suffix="$suffix"
    dest="${EXPORT_FOLDER}/${folder}/${base}__${suffix}.pdf"
    suffix=$((suffix + 1))
done

echo "Exported resume to $dest"
mkdir -p `dirname $dest`
mv "$temp_file_name" "$dest"

