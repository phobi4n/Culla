# Culla
Culla will generate a Plasma theme and window decoration colorised from your current wallpaper. Culla requires Python 3.4 and **Python Pillow** which can be installed from your package manager. Note, Ubuntu calls it python3-pil.

Installation should be simple. In a terminal run:
```
./dumb_installer.sh
```
This will copy a Plasma and Aurorae theme, a colour scheme and a menu entry which will appear under Settings. Running Culla will change your Plasma theme but will only change the window decoration if it is already set to Culla. Culla will also set the highlight and focus colour in applications but does not overwrite any saved scheme.

### Installation Issues
Depending on your distro you may need to add ~/.local/bin to your PATH.
