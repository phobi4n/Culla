#!/bin/sh

AURORAE="${HOME}/.local/share/aurorae/themes"
mkdir -pv "$AURORAE"
cp -rv themes/Culla  "$AURORAE"

PLASMA="${HOME}/.local/share/plasma/desktoptheme"
mkdir -pv "$PLASMA"
cp -rv desktoptheme/Culla "$PLASMA"

BIN="${HOME}/.local/bin"
mkdir -pv "$BIN"
cp -v Culla.py "$BIN"
chmod -v 755 "$BIN"/Culla.py

SCHEME="${HOME}/.local/share/color-schemes"
mkdir -pv "$SCHEME"
cp -v Culla.colors "$SCHEME"

APPS="${HOME}/.local/share/applications"
mkdir -pv "$APPS"
cp -v culla.desktop "$APPS"

PIXMAP="${HOME}/.local/share/pixmaps"
mkdir -pv "$PIXMAP"
cp -v culla.png "$PIXMAP"

python3 -c "from PIL import Image" 2>/dev/null

if [ $? == 1 ]; then
    echo
    echo
    echo
    echo "Culla requires Python3 Pillow. This should be available"
    echo "in your package manager otherwise you could try"
    echo "'sudo pip3 install pillow'. In Ubuntu, this may"
    echo "be called python3-pil."
fi
echo
echo
echo "You may need to add ~/.local/bin to your PATH"
