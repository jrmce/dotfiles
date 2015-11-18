# Two line prompt with git branch
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '

# Load bash_aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
cd 

### Added by the Heroku Toolbelt
export GOPATH=$HOME/code
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/Users/jrmce/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
source ~/.nvm/nvm.sh

export SECRET_KEY=djfnadsnfnjadsnjafsdkjfjkndfsjndfjkfdskjfdskjdfsjkna
export NODE_ENV=dev
