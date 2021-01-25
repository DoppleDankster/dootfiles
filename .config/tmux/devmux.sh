#!/bin/sh

if ps -u $USER | grep emacs;
then
    echo "Emacs is running"
else
    echo "$SERVICE not running"
    emacs --daemon
fi

if tmux has-session -t DEV;
then
    tmux attach-session -t DEV
else
tmux -f ~/.config/tmux/tmux.conf new-session -d -s 'DEV' -n 'SHELL'
tmux new-window -t DEV -n "EMACS"
tmux send-keys 'ec' C-m
tmux attach-session -t DEV
fi
