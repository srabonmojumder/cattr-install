#!/bin/bash


echo "script started"
# Set environment variable to ignore TLS certificate errors
export NODE_TLS_REJECT_UNAUTHORIZED="0"

# Install additional packages
sudo apt-get install -y x11-xserver-utils scrot

# Set the file path
FILE=~/Desktop/cattr.deb

# Download the file
wget -O "$FILE" https://git.amazingcat.net/cattr/desktop/desktop-application/-/releases/permalink/latest/downloads/deb

# Install the downloaded file using apt
sudo apt install "$FILE" -y

# Check if the installation was successful
if [ $? -eq 0 ]; then
    # Display success message and prompt in green color
    echo -e "\033[1;32mInstallation successful!\033[0m"
    echo -e "\033[1;32mPlease add the hostname: https://trackeradmin.voiceerp.com/\033[0m"
    echo -e "\033[1;32mThen continue and input your credentials.\033[0m"
else
    echo "Installation failed. Please check for errors."
fi

# Delete the file after installation
rm "$FILE"
