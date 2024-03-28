#!/bin/bash
#
# Download files from urls mentioned in a file
# Contributed by: Bathula Sharath Kumar
#
read -rp "Enter the filename containing URLs: " url_file
while read -r url; do
	filename=$(basename "$url")
	curl -o "$filename" "$url"
	echo "Completed Download $filename"
done < "$url_file"
echo "--------------------------"
echo "All files downloaded successfully!"
