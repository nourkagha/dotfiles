# My custom aliases and functions

# Replace exa with ls

alias ls='exa'

# Full update and cleanup

function noups() {
 sudo nala update
 sudo nala upgrade -y
 flatpak update -y
 chezmoi upgrade
 rustup update
 sudo nala autoremove -y
 sudo nala clean
 flatpak uninstall --unused
}
