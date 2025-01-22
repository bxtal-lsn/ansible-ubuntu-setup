#!/bin/bash

# Generate a package_list.yml file with installed packages
output_file="../config/package-list.yml"

# Write the header to the file
echo "packages:" > "$output_file"

# Append installed packages in YAML format
pacman -Qqe | awk '{print "  - " $0}' >> "$output_file"

# Confirm completion
echo "Package list has been saved to $output_file"
