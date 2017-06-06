#!/bin/bash -x

# Define version and build number
VERSION="2.3.2.0"
BUILD="162.3934792"

# Prepend base URL for download
URL="https://dl.google.com/dl/android/studio/ide-zips/$VERSION/android-studio-ide-$BUILD-linux.zip"

# Truncate filename
FILE=$(basename ${URL})

# Set download directory
DEST=~/$FILE

# Download binary
wget -cO ${DEST} ${URL} --read-timeout=5 --tries=0

# Set directory name
OPT="/opt"
DIR="$OPT/android-studio"

# Unzip file
unzip ${DEST} -d ${OPT}

# Grab executable folder
BIN="$DIR/bin"

# Add permissions to install directory
chmod -R +rwx ${DIR}

# Set desktop shortcut path
DESK=/usr/share/applications/android-studio.desktop

# Add desktop shortcut
printf "[Desktop Entry]\nEncoding=UTF-8\nName=Android Studio\nComment=Android Studio\nExec=%s/studio.sh\nIcon=%s/studio.png\nTerminal=false\nStartupNotify=true\nType=Application" "$BIN" "$BIN" >> ${DESK}

# Create symlink entry
ln -s ${BIN}/studio.sh /usr/local/bin/studio