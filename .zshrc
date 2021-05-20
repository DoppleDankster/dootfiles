export ZSH="$HOME/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

ZSH_THEME="ys"

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


# Glab auto complete
compdef _glab glab
source $HOME/.config/glab-cli/completion

# Aliases
source $HOME/.aliasrc
source $HOME/.profile
source $HOME/.envrc
source $HOME/.datapredrc
plugins=(golang gcloud docker fzf aws zsh-syntax-highlighting)

# SSH
eval `keychain --agents ssh --eval github gitlab server laptop gazeuro-dev-large --quiet --confhost`

source $ZSH/oh-my-zsh.sh


