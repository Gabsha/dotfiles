#!/bin/bash

# Symlink desktop entry
ln -sf ${PWD}/itksnap.desktop /home/gabriel/.local/share/applications/

# Symlink icon
ln -sf ${PWD}/brain.svg /home/gabriel/.local/share/icons/

# Create mimetype for nifti
ln -sf ${PWD}/nifti.xml /home/gabriel/.local/share/mime/packages/


# After copying this, needs to update mime database with command:
# sudo update-mime-database ~/.local/share/mime
# But it says that this path is not in XDG_DATA_HOME... despite being there (wrong shell env?)

# As a tmp solution, copy to /usr/share/mime/packages/nifti.xml and update.
