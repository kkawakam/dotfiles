#!/bin/bash -x

# Install to Intellij Ultimate Edition
ed="U"
VERSION="2019.1.1"
URL="https://download.jetbrains.com/idea/ideaI$ed-$VERSION.tar.gz"

# Truncate filename
FILE=$(basename ${URL})

# Set download directory
DEST=~/$FILE

# Download binary
wget -cO ${DEST} ${URL} --read-timeout=5 --tries=0

# Set directory name
DIR="/opt/idea-I$ed-$VERSION"

# Untar file
if mkdir ${DIR}; then
    tar -xzf ${DEST} -C ${DIR} --strip-components=1
fi

# Grab executable folder
BIN="$DIR/bin"

# Add permissions to install directory
chmod -R +rwx ${DIR}

# Set desktop shortcut path
DESK=/usr/share/applications/idea.desktop

# Add desktop shortcut
printf "[Desktop Entry]\nEncoding=UTF-8\nName=IntelliJ IDEA\nComment=IntelliJ IDEA\nExec=%s/idea.sh\nIcon=%s/idea.png\nTerminal=false\nStartupNotify=true\nType=Application\nCategories=Utility;TextEditor;Development;IDE;" "$BIN" "$BIN" >> ${DESK}

# Create symlink entry
ln -s ${BIN}/idea.sh /usr/local/bin/idea
