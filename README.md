This Bash script automates the process of downloading audio from a list of video links using yt-dlp, a command-line tool for downloading videos from various platforms.


Make the Script Executable:

bash

    chmod +x download_mp3.sh

Prepare Your Links:

    Create a text file (e.g., links.txt) containing the URLs you want to download, with one URL per line.


bash

    ./download_mp3.sh links.txt

This script will read each link from the specified text file and download the audio in MP3 format using yt-dlp. Make sure you have yt-dlp installed on your system before running the script.
