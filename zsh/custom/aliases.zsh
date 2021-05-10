# My custom aliases and functions

# Full update and cleanup
function noups() {
 sudo apt update
 sudo apt upgrade -y
 flatpak update -y
 proton-ge-custom-updater
 rustup update
 sudo apt autoremove -y
 sudo apt clean
 flatpak uninstall --unused
}
