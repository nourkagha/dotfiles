# My custom aliases and functions

# Full update and cleanup
function noups() {
 sudo apt update
 sudo apt upgrade -y
 flatpak update -y
 proton-ge-custom-updater
 sudo apt autoremove
 sudo apt clean
 flatpak uninstall --unused
}
