#!/bin/bash

# Check if yt-dlp is installed
if ! command -v yt-dlp &> /dev/null; then
    echo "yt-dlp could not be found. Please install it first."
    exit 1
fi

# Check if the input file is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file_with_links.txt>"
    exit 1
fi

# Read the file containing the links
input_file="$1"

# Download each link in MP3 format
while IFS= read -r link; do
    echo "Downloading: $link"
    yt-dlp -x --audio-format mp3 "$link"
done < "$input_file"

echo "Download completed."
