if status is-interactive
    # Commands to run in interactive sessions can go here

    # Auto-start tmux in interactive sessions cleanly
    if not set -q TMUX; and test "$TERM" = alacritty
        exec tmux new-session -A -s main
    end
end

alias cls="clear"
alias ll="ls -la"
alias fastfetch="fastfetch --logo-type small"
alias home="cd $HOME"
alias ff="sudo find / -name"
