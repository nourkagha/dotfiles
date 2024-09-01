if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
fish_add_path ~/.local/bin

# Starship
starship init fish | source
enable_transience

# zoxide
zoxide init fish | source

# Rust
fish_add_path ~/.cargo/bin

# Go
fish_add_path /usr/local/go/bin
