# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Two line prompt with git branch
PS1="\u: \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]\n$ "

# Load bash_aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
cd 

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
eval "$(rbenv init -)"
source ~/.nvm/nvm.sh

# Go Setup
export GOPATH=$HOME/code/go
export PATH=$GOPATH/bin:$PATH
