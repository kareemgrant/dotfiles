export ZSH=$HOME/.oh-my-zsh
# Path to your oh-my-zsh configuration.
ZSH_THEME="pi"

bindkey -v

alias editz="atom ~/.zshrc"
alias home="cd ~/"
alias dp="cd ~/Dropbox/devprep-ops"
alias work="cd ~/Dropbox/@workspace"

alias gphm="git push heroku main"
alias gada="git add -A"
alias gcmsg="git commit -m"
alias gpom="git push origin master"
alias gpoh="git push origin master && git push heroku master"
alias gacm="git add . && git commit -m $1"
alias gacmp="git add . && git commit -m $1 && git push origin master"
alias hudeploy="hugo && cd public && git add . && git commit -m 'update content' && git push origin master && cd .."
alias huserve="hugo server"

alias be="bundle exec $1"
alias bi="bundle install"
alias rc="bundle exec rails console"
alias rr="bundle exec rake routes"
alias migrate="bundle exec rake db:migrate"
alias server="bundle exec rails server"

# reload bash
alias zsource="source ~/.zshrc"
alias taginit="ctags -R ."

alias editcreds="EDITOR=vim rails credentials:edit"

# Hireology settings
alias capp="cd /Users/kareemgrant/workspace/hireology/Code/app/app"
alias specf="bundle exec rspec spec_no_rails"
alias cukes="bundle exec make run-cukes"
alias specr="bundle exec rspec spec"


alias drop="cd /Users/kareemgrant/Dropbox"
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

export GEM_EDITOR='atom'
export EDITOR='/usr/local/bin/atom'

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
export PATH="/usr/local/sbin:$PATH"

### Solana Path
export PATH="/Users/kareemgrant/.local/share/solana/install/active_release/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
