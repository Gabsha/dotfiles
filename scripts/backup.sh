#!/bin/bash

daily() {
        notify-send 'Started daily backup...' '' --icon=drive-harddisk
        rsync -av --info=progress2 --delete /media/SecondHD/Photo/ /media/gabriel/Data/Backups/Photo/
        rsync -av --info=progress2 --delete /media/SecondHD/Music/ /media/gabriel/Data/Backups/Music/
        rsync -av --info=progress2 --delete /media/SecondHD/Documents/ /media/gabriel/Data/Backups/Documents/
        notify-send 'Finished daily backup' '' --icon=drive-harddisk
}

weekly() {
        echo "No weekly backup procedure yet"
}

monthly() {
        echo "No monthly backup procedure yet"
}


case "$1" in
  daily)
          daily
          ;;
  weekly)
          weekly
          ;;
  monthly)
          monthly
          ;;
  *)
          echo "Usage backup {daily|weekly|monthly}" >&2
          exit 3
          ;;
esac

# Import photos from iPhone
# python phockup.py "/home/gabriel/Pictures/iPhone/100APPLE/" "/media/gabriel/SecondHD/Photo/" -d YYYY/YYYY-MM-DD

