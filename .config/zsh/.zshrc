# p10k configuration setup
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# dotfile paths
export ZSH="$HOME/.oh-my-zsh"
export ZSHRC="$HOME/.zshrc"
export DOTFILES="$HOME/Dotfiles"
export NVIM="$HOME/.config/nvim"
export NVIMRC="$HOME/.config/nvim/init.vim"
export STY="$DOTFILES/latex/templates/_andrew.sty"
export LSNIP="$HOME/Dotfiles/.config/nvim/LuaSnip/tex.lua"

# zsh_theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# zsh_plugins
plugins=(git z zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)

# source oh-my-zsh
source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/catppuccin/catppuccin_mocha-zsh-syntax-highlighting.zsh

# general
alias l="ls -la"
alias qcatgirl="cat $DOTFILES/secret.txt"
alias f="fortune"
alias spotify="spicetify update && spicetify config current_theme Ziro && spicetify config color_scheme orange_light && spicetify apply"

# vim
alias vim="nvim"

# c++
alias g++="g++ -std=c++20"

# sublime
alias sublime="open -a 'sublime text'"

# latex
alias notes_template="zsh $DOTFILES/latex/scripts/notes.sh"
alias pset_template="zsh $DOTFILES/latex/scripts/pset.sh"
alias treegen="tree -H . -I 'index.html|*.fdb_latexmk|*.aux|*.fls|*.out|*.pre|*.synctex*|*.toc' -D --timefmt='%b %d %Y %R' --charset utf-8 -T 'Test' > index.html"

# git
alias grc='git rebase --continue'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


###### other config stuff from random libraries

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:/Users/andrew/.spicetify
export PATH="/opt/homebrew/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andrew/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/andrew/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andrew/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/andrew/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
