if  [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if  [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if  [ -d "$HOME/.local/script" ] ; then
    PATH="$HOME/.local/script:$PATH"
fi

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

if  [ -d "/usr/local/go/bin/" ] ; then
    PATH="/usr/local/go/bin/:$PATH"
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

if [ -d "$HOME/.npm-packages" ] ; then
    PATH="$HOME/.npm-packages/bin:$PATH"
fi

if [ -d "/opt/sonar-scanner" ] ; then
    export SONAR_SCANNER_HOME="/opt/sonar-scanner"
    export PATH="${PATH}:${SONAR_SCANNER_HOME}/bin"
fi

if [ -d "/opt/WebDriver" ] ; then
    export PATH="${PATH}:/opt/WebDriver/bin"
fi
