#!/usr/bin/env bash

template_name="Jaymon"

# change the template name to the first argument if it is passed in
if [ "$#" -eq 1 ]; then

	template_name=$1

fi

current_dir=$(pwd)
template_dir=$HOME/Library/Developer/Xcode/Templates/File\ Templates/

# Create the install directory if it does not exist.
if [ ! -d "$template_dir" ]; then

	mkdir -p "$template_dir"

fi

# Copy all of the xctemplate folders into the install directory.
#cp -r *.xctemplate "$installDirectory"
echo "Templates will be linked from $current_dir into ${template_dir}${template_name}"
ln -s "$current_dir" "${template_dir}${template_name}"

