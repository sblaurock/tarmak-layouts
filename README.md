tarmak-layouts
==============

Tarmak transitional keyboard layout bundles for Mac OS X. Support for both *ETROI* and *ETOIR* variants. More information can be found [here](http://forum.colemak.com/viewtopic.php?pid=14776).

## Automatic Install
An install script has been included with this repository to allow for easier installation. See [install.sh](https://github.com/sblaurock/tarmak-layouts/blob/master/install.sh) for more details.
```bash
sudo ./install.sh (etroi | etoir)
```
Alternatively, install directly from Github with the one-liners below.
```bash
# ETROI
cd ~ && git clone --depth 1 https://github.com/sblaurock/tarmak-layouts.git && cd tarmak-layouts && chmod +x install.sh && sudo ./install.sh etroi
```

```bash
# ETOIR
cd ~ && git clone --depth 1 https://github.com/sblaurock/tarmak-layouts.git && cd tarmak-layouts && chmod +x install.sh && sudo ./install.sh etoir
```

## Manual Install
Simply unpack the relevant *.tar.gz* file and copy the bundle to */Volumes/Keyboard Layouts/*.

## Note
Colemak calls for remapping the caps lock key to backspace, however neither the Tarmak layouts in this repository nor the integrated OS X Colemak layout provide this functionality. You can look at [Karabiner-Elements](https://github.com/tekezo/Karabiner-Elements) to allow for this if desired.

## Thanks
The original layout files were built by [ghaz](http://forum.colemak.com/profile.php?id=2210) with support from the fantastic community on the [Colemak forums](http://forum.colemak.com/). I've adapted his original layout files to support the newer *ETROI* variant (out of personal necessity) and combined layouts from each variant into individual bundles. A warm "thank you" to all those who contributed before me to made this possible.
