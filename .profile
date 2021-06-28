if  [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if  [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# My Scripts
if  [ -d "$HOME/.local/script" ] ; then
    PATH="$HOME/.local/script:$PATH"
fi

if  [ -d "/usr/local/go/bin/" ] ; then
    PATH="/usr/local/go/bin/:$PATH"
fi

if [ -d "$HOME/.emacs.d/bin" ] ; then
    PATH="$HOME/.emacs.d/bin:$PATH"
fi

if [ -d "$HOME/.cargo/bin" ] ; then
    PATH="$HOME/.cargo/bin:$PATH"
fi

if [ -d "$HOME/.npm-packages" ] ; then
    PATH="$HOME/.npm-packages/bin:$PATH"
fi

if [ -d "$HOME/.pyenv/bin" ] ; then
    PATH="$HOME/.pyenv/bin:$PATH"
fi
