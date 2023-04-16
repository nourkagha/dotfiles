# My custom aliases and functions

alias bat='batcat'
alias fd='fdfind'
alias ls='exa'

# Full update and cleanup

function noups() {
 sudo nala upgrade -y
 flatpak update -y
 chezmoi upgrade
 rustup update
 fisher update
 sudo restic self-update
 sudo nala autoremove -y
 sudo nala clean
 flatpak uninstall --unused
}
