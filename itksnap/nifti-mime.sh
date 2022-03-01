#!/bin/bash

# Symlink desktop entry
ln -sf ${PWD}/itksnap.desktop /home/gabriel/.local/share/applications/

# Symlink icon
ln -sf {$PWD}/brain.svg /home/gabriel/.local/share/icons/

# Create mimetype for nifti
ln -sf ${PWD}/nifti.xml /home/gabriel/.local/share/mime/

