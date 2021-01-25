if  [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if  [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if  [ -d "$HOME/.local/script" ] ; then
    PATH="$HOME/.local/script:$PATH"
fi

if  [ -d "/usr/bin/go" ] ; then
    PATH="/usr/bin/go:$PATH"
fi

if [ -d "$HOME/.local/go/bin" ] ; then
    PATH="$HOME/.local/go/bin:$PATH"
fi

if [ -d "$HOME/.emacs.d/bin" ] ; then
    PATH="$HOME/.emacs.d/bin:$PATH"
fi


if [ -d "$HOME/.cargo/bin" ] ; then
    PATH="$HOME/.cargo/bin:$PATH"
fi
