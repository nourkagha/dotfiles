# My custom aliases and functions

# Replace exa with ls

alias ls='exa'

# Full update and cleanup
function noups() {
 sudo apt update
 sudo apt upgrade -y
 flatpak update -y
 rustup update
 sudo apt autoremove -y
 sudo apt clean
 flatpak uninstall --unused
}
