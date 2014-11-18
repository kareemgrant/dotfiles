# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cloud"

bindkey -v

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

alias cdp="cd /Users/kareemgrant/Projects"
alias cdc="cd /Users/kareemgrant/Code"
alias cdh="cd /Users/kareemgrant"

alias gphm="git push heroku master"
alias gada="git add -A"
alias gcmsg="git commit -m"
alias gpom="git push origin master"
alias gpoh="git push origin master && git push heroku master"

alias be="bundle exec $1"
alias bi="bundle install"

alias rc="bundle exec rails console"

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
#export PATH=/Users/kareemgrant/.rvm/gems/ruby-1.9.3/bin:/Users/kareemgrant/.rvm/gems/ruby-1.9.3@global/bin:/Users/kareemgrant/.rvm/rubies/ruby-1.9.3/bin:/Users/kareemgrant/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/sbin:/usr/sbin

export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/sbin:/usr/sbin
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#source /usr/local/etc/bash_completion.d/git-completion.bash
#
export PATH=/usr/local/share/npm/bin:$PATH

export GEM_EDITOR='mvim'
export EDITOR='mvim'
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# added by travis gem
source /Users/kareemgrant/.travis/travis.sh
export PATH="$HOME/.rbenv/bin:$PATH"
