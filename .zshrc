export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="ys"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

BULLETTRAIN_PROMPT_ORDER=(
  time
  dir
  git
)
# Shell history
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
#unsetopt hist_ignore_space      # ignore space prefixed commands
setopt inc_append_history
setopt share_history
setopt bang_hist
setopt extendedglob
setopt nocaseglob
setopt nomatch

# Navigation
setopt autocd autopushd
autoload -U compinit
compinit
autoload -U promptinit
promptinit

# Misc
setopt nobeep
setopt autocd
setopt correct
setopt hash_list_all

# Aliases
source $HOME/.aliasrc
source $HOME/.profile
source $HOME/.datapredrc
plugins=(git golang docker fzf aws zsh-syntax-highlighting)

# SSH
eval `keychain --agents ssh --eval github gitlab server --quiet --confhost`


source $ZSH/oh-my-zsh.sh


