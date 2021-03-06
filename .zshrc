export ZSH=$HOME/.oh-my-zsh
# Path to your oh-my-zsh configuration.
ZSH_THEME="cloud"

bindkey -v

alias cdp="cd /Users/kareemgrant/workspace/projects"
alias cdc="cd /Users/kareemgrant/workspace/code"
alias cdh="cd /Users/kareemgrant"

alias gphm="git push heroku master"
alias gada="git add -A"
alias gcmsg="git commit -m"
alias gpom="git push origin master"
alias gpoh="git push origin master && git push heroku master"

alias be="bundle exec $1"
alias bi="bundle install"
alias rc="bundle exec rails console"
alias rr="bundle exec rake routes"
alias migrate="bundle exec rake db:migrate"
alias server="bundle exec rails server"

alias zsource="source ~/.zshrc"
alias taginit="ctags -R ."

# Hireology settings
alias capp="cd /Users/kareemgrant/workspace/hireology/Code/app/app"
alias specf="bundle exec rspec spec_no_rails"
alias cukes="bundle exec make run-cukes"
alias specr="bundle exec rspec spec"


alias drop="cd /Users/kareemgrant/Dropbox"
alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

export GEM_EDITOR='mvim'
export EDITOR='/usr/local/bin/mvim'

export PATH="$HOME/.bin:$PATH"
# recommended by brew doctor

export PATH="/usr/local/bin:$PATH"
source /Users/kareemgrant/.asdf/asdf.sh

# export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
# export PATH="$PATH:/usr/local/lib/node_modules"
# source $(brew --prefix nvm)/nvm.sh
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#export PATH=/usr/local/share/npm/bin:$PATH
# adding text and loving it

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Fix for python crashing issue
export DYLD_FORCE_FLAT_NAMESPACE=1
