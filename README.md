## Caps Lock State GUI with configurable exclusions in AutoHotKey

If your keyboard doesn't have an easily visible Caps Lock indicator, a brief OSD (On-Screen Display) may be helpful.

Sometimes this OSD can interfere with games or other apps, so these can be added to a group to be excluded.

The script does not interfere with or hook Caps Lock function, and Caps Lock is still fully functional even with exclusions.

The only thing this script does is interpret Caps Lock status on the key press, and show a respective GUI on screen, only if the active window is not excluded. OSD is shown for 500ms and can be configured with the delay variable on line 16. Colors and other attributes can also be adjusted if desired.

Requires the installation of [AutoHotKey](https://www.autohotkey.com/) 

This is a very basic AutoHotKey script with a very basic GUI window. Minimal support will be given. This may not be the best way to do this.

### Preview of OSD
![OSD Preview](https://github.com/BangDroid/capsOSD/raw/main/capsPreview.png)
