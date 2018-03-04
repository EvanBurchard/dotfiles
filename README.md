As of now, all of these files have the same paths, just from the home
directory.


# A few other notes for linux
These are short, so I can add them here:
`/etc/rc.local (permission 750)`

#!/bin/sh -e
setkeycodes 3a 29
setkeycodes 56 43
exit 0

(This fixes the pipe key, and also maps caps to ctrl)


inside of `/etc/modprobe.d/blacklist`

`blacklist pcspkr`

to get rid of the beep

Everything else (xinput configurations, for instance) are crammed into
the i3 configuration.
