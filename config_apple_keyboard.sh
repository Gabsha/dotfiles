# Taken from https://help.ubuntu.com/community/AppleKeyboard

# Change the fn key mode, iso-layout and swap cmd/alt keys

# Temporarily
# echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode
# echo 0 | sudo tee /sys/module/hid_apple/parameters/iso_layou
# echo 1 | sudo tee /sys/module/hid_apple/parameters/swap_opt_cmd

# Permanently
echo options hid_apple fnmode=2 | sudo tee -a /etc/modprobe.d/hid_apple.conf
echo options hid_apple iso_layout=0 | sudo tee -a /etc/modprobe.d/hid_apple.conf
echo options hid_apple swap_opt_cmd=1 | sudo tee -a /etc/modprobe.d/hid_apple.conf

sudo update-initramfs -u -k all

