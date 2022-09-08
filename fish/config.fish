if status is-interactive
    # Commands to run in interactive sessions can go here
    source ~/.iterm2_shell_integration.fish
    
    set -gx EDITOR nvim
    fish_add_path /opt/homebrew/bin
end
set -g -x fish_greeting '🚀Hello Alexey!🚀'
set -gx TERM xterm-256color
set LSCOLORS Fxfxcxdxbxegedabagacad
set PATH /Users/alekseysmolygin/depot_tools $PATH

starship init fish | source

alias gonc "cd ~/.config/nvim/lua/"
alias gofc "cd ~/.config/fish/"

if type -q exa
    alias ll "exa -l -g --icons --all --git --no-permissions --no-user --no-time --header --grid"
end
