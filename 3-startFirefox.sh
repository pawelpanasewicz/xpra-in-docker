#!/usr/bin/env bash

#login to 'devbox' coitainer. Password for user 'devbox' is 'asdf'
ssh devbox@127.0.0.1

# Output should be something like this:
# ssh devbox@127.0.0.1                                                                                                                                                             ~ 1
# devbox@127.0.0.1's password:
# Welcome to Ubuntu 14.04 LTS (GNU/Linux 4.4.0-59-generic x86_64)
#
#  * Documentation:  https://help.ubuntu.com/
#
# The programs included with the Ubuntu system are free software;
# the exact distribution terms for each program are described in the
# individual files in /usr/share/doc/*/copyright.
#
# Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
# applicable law.
#
# devbox@f7f90fc7aed8:~$


#now start xpra in that container
xpra start :10

#Output should be similar to this:

#devbox@f7f90fc7aed8:~$ xpra start :10
#devbox@f7f90fc7aed8:~$ Entering daemon mode; any further errors will be reported to:
#  /home/devbox/.xpra/:10.log

# and finally start firefox on DISPLAY=:10

DISPLAY=:10 firefox

#My output for this command is:

# devbox@f7f90fc7aed8:~$ DISPLAY=:10 firefox
#
# (firefox:166): GLib-GObject-CRITICAL **: g_object_ref: assertion 'object->ref_count > 0' failed
#
# (firefox:166): GLib-GObject-CRITICAL **: g_object_unref: assertion 'object->ref_count > 0' failed
#
# (firefox:166): GLib-GObject-CRITICAL **: g_object_ref: assertion 'object->ref_count > 0' failed
#
# (firefox:166): GLib-GObject-CRITICAL **: g_object_unref: assertion 'object->ref_count > 0' failed
#
# (firefox:166): LIBDBUSMENU-GLIB-WARNING **: Unable to get session bus: Failed to execute child process "dbus-launch" (No such file or directory)
#
# (/usr/lib/firefox/plugin-container:232): GLib-GObject-CRITICAL **: g_object_ref: assertion 'object->ref_count > 0' failed
#
# (/usr/lib/firefox/plugin-container:232): GLib-GObject-CRITICAL **: g_object_unref: assertion 'object->ref_count > 0' failed
#
# (/usr/lib/firefox/plugin-container:232): GLib-GObject-CRITICAL **: g_object_ref: assertion 'object->ref_count > 0' failed
#
# (/usr/lib/firefox/plugin-container:232): GLib-GObject-CRITICAL **: g_object_unref: assertion 'object->ref_count > 0' failed



#now go to back to windows CMD



