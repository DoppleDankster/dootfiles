export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="ys"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Shell Configuration
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_verify
#unsetopt hist_ignore_space      # ignore space prefixed commands
setopt inc_append_history
setopt share_history
setopt bang_hist
setopt extendedglob
setopt nocaseglob
setopt nomatch
setopt nobeep
setopt autocd
setopt correct
setopt hash_list_all

# Navigation
setopt autocd autopushd
autoload -U compinit
compinit
autoload -U promptinit
promptinit

# Aliases
source $HOME/.aliasrc
source $HOME/.profile
source $HOME/.envrc
source $HOME/.datapredrc
plugins=(git golang docker fzf aws poetry zsh-syntax-highlighting)

# SSH
eval `keychain --agents ssh --eval github gitlab_datapred server laptop --quiet --confhost`

source $ZSH/oh-my-zsh.sh


