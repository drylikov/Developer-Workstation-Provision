#/usr/bin/env bash

# http://docs.xfce.org/xfce/xfconf/xfconf-query
# http://docs.xfce.org/xfce/thunar/hidden-settings

# Showing hidden files
xfconf-query -c thunar -p /last-show-hidden -s true

# Using "details" view mode
xfconf-query -c thunar -p /last-view -s ThunarDetailsView
