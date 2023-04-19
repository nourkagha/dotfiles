function noups -d "Perform updates and cleanup"
  sudo nala upgrade -y
  flatpak update -y
  chezmoi upgrade
  rustup update
  fisher update
  sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)" -y -f
  sudo restic self-update
  sudo nala autoremove -y
  sudo nala clean
  flatpak uninstall --unused
end
