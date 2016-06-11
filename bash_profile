# Two line prompt with git branch
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '

# Load bash_aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
cd 

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-ocean.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

source ~/.nvm/nvm.sh
