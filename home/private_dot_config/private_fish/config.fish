if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Starship
starship init fish | source
enable_transience

# zoxide
zoxide init fish | source

# Rust
fish_add_path $HOME/.cargo/bin
