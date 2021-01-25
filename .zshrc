eval $(keychain --confhost --quiet --nogui --agents ssh,gpg)
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
setopt append_history           # append
setopt hist_ignore_all_dups     # no duplicate
setopt hist_reduce_blanks       # trim blanks
setopt hist_verify              # show before executing history commands
#unsetopt hist_ignore_space      # ignore space prefixed commands
setopt inc_append_history       # add commands as they are typed, don't wait until shell exit
setopt share_history            # share hist between sessions
setopt bang_hist                # !keyword
setopt extendedglob             # Use the ^, ~, and # for filename globbing
setopt nocaseglob               # Case insensitive filename globbing
setopt nomatch                  # Warn if file globbing didn't match any file

# Navigation
setopt autocd autopushd
autoload -U compinit
compinit
autoload -U promptinit
promptinit

# Misc
setopt nobeep           # Disable terminal bell
setopt autocd           # cd if only a directory name was entered
setopt correct          # Prompt to correct misspelled commands
setopt hash_list_all    # Correct false reports of spelling errors

# Aliases
source $HOME/.aliasrc
source $HOME/.profile
plugins=(git golang docker fzf aws)

source $ZSH/oh-my-zsh.sh


