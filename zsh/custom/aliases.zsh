# My custom aliases and functions
alias ajour='/home/nour/Applications/ajour.AppImage'
alias spicetify='/home/nour/spicetify-cli/spicetify'

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
