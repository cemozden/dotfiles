if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x PATH $PATH . ~/bin/ ~/.local/share/gem/ruby/3.0.0/bin /home/linuxbrew/.linuxbrew/bin/
    set -x EDITOR "nvim"
    set -x GTK_MODULES "canberra-gtk-module:canberra-gtk-module"
    set -x TERM "xterm-256color"
    alias t "tmux attach-session -d"
    alias py "python"
    alias lssvc "systemctl list-units --type=service --all"
end
