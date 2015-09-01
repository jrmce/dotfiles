# Two line prompt with git branch
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '

# Load bash_aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
cd 

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
eval "$(rbenv init -)"
source ~/.nvm/nvm.sh

export SECRET_KEY="dflkndsaasjadnfjdfjdfkkdfkadsfddsffdsdsf"

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
export NODE_ENV="dev"
