function noups -d "Perform updates and cleanup"
  set_color yellow
  echo Updating packages...
  set_color normal
  sudo nala upgrade -y
  echo
  set_color yellow
  echo Updating flatpaks...
  set_color normal
  flatpak update -y
  echo
  set_color yellow
  echo Updating chezmoi...
  set_color normal
  chezmoi upgrade
  echo
  set_color yellow
  echo Updating Rust...
  set_color normal
  rustup update
  echo
  set_color yellow
  echo Updating Starship...
  set_color normal
  sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)" -y -f
  echo
  set_color yellow
  echo Updating Go...
  set_color normal
  wget "https://go.dev/dl/$(curl 'https://go.dev/VERSION?m=text' | head -1).linux-amd64.tar.gz"
  sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go*.linux-amd64.tar.gz
  rm go*.linux-amd64.tar.gz
  echo
  set_color yellow
  echo Updating Node...
  set_color normal
  nvm install latest
  echo
  set_color yellow
  echo Updating Netlify...
  set_color normal
  npm install netlify-cli -g
  echo
  set_color yellow
  echo Updating Fisher...
  set_color normal
  fisher update
  echo
  set_color yellow
  echo Cleaning up packages...
  set_color normal
  sudo nala autoremove -y
  sudo nala clean
  flatpak uninstall --unused
  echo
  set_color green
  echo Updates complete.
  set_color normal
  echo
end
