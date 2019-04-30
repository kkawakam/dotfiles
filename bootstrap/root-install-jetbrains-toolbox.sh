#!/bin/bash -x

# Install to Jetbrains Toolbox
VERSION="1.14.5179"
URL="https://download.jetbrains.com/toolbox/jetbrains-toolbox-$VERSION.tar.gz"

# Truncate filename
FILE=$(basename ${URL})

# Set download directory
DEST=~/$FILE

# Download binary
wget -cO ${DEST} ${URL} --read-timeout=5 --tries=0

# Set directory name
DIR="/opt/jetbrains-toolbox-$VERSION"

# Untar file
if mkdir ${DIR}; then
    tar -xzf ${DEST} -C ${DIR} --strip-components=1
fi

# Add permissions to install directory
chmod -R +rwx ${DIR}

# Create symlink entry
ln -s ${DIR}/jetbrains-toolbox /usr/local/bin/jetbrains-toolbox
