function noups -d "Perform updates and cleanup"
  sudo nala upgrade -y
  flatpak update -y
  chezmoi upgrade
  rustup update
  sudo restic self-update
  sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)" -y -f
  wget "https://go.dev/dl/$(curl 'https://go.dev/VERSION?m=text').linux-amd64.tar.gz"
  sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go*.linux-amd64.tar.gz
  nvm install latest
  npm install netlify-cli -g
  fisher update
  sudo nala autoremove -y
  sudo nala clean
  flatpak uninstall --unused
end
