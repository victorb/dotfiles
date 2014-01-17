# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="crunch"
#ZSH_THEME="frisk"
ZSH_THEME="blinks"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx autojump battery composer sublime)

# This is probably not a good idea
source $ZSH/oh-my-zsh.sh
setopt no_hist_verify

# Customize to your needs...
export PATH=$GOPATH/bin/:/usr/local/php5/bin:/Applications/Firefox.app/Contents/MacOS:/usr/local/sbin:$PATH
export PATH=$PATH:/Library/WebServer/Documents/AWS-ElasticBeanstalk-CLI-2.4.0/eb/macosx/python2.7:$PATH
export EDITOR='vim'
export LOLCOMMITS_ANIMATE=2
export LOLCOMMITS_FORK=true

alias htdocs='cd /Library/WebServer/Documents'
alias ruckus='php vendor/ruckusing/ruckusing-migrations/ruckus.php'
alias edit_hosts='vim /etc/hosts'
alias edit_vhosts='vim /etc/apache2/extra/httpd-vhosts.conf'
alias edit_profile='vim ~/.profile'
alias edit_zshrc='vim ~/.zshrc'
alias ez='edit_zshrc'
alias clear_grids='rm -rf /Library/WebServer/Documents/webgrind/grids/*'
alias profile='~/.profile'
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | printf '=&gt; Public key copied to pasteboard.\n'";
# alias git='hub'
alias wh='htdocs && cd worldhomes'
export APPLICATION_ENV='development'
alias s='subl .&'
alias edit_phpini='vim /usr/local/php5/php.d/99-liip-developer.ini'
alias codecept='php vendor/codeception/codeception/codecept'
alias artisan='php artisan'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias s='subl .&'
alias love='open -n -a love'
alias resource='source ~/.zshrc'
alias whs='whs'
alias chef='sh /Library/WebServer/Documents/chef'
alias psgrep="ps aux | grep -i"
alias phps="php -S localhost:8000"
alias htgrep="history | grep -i"
alias lgrep="la | grep -i"
alias psysh="/Users/victor/Downloads/psysh/bin/psysh"
alias o="open"
alias f="mdfind"

# Git aliases
alias gp='git pull'
alias gpush='git push'
alias gc='git commit --verbose'
alias gca='gc --amend'
alias gch='git checkout'
alias gchb='git checkout -b'
alias ga='git add'
alias gaa='ga .'
alias gs='git status'
alias gcp='git cherry-pick'
alias gmt='git mergetool'
alias gl='git log'
alias gd='git diff'
alias gdc='gd --cached'
alias glog='git log --graph --all --decorate --oneline'
alias gpush='git push $* $(branch):$branch'
alias gap='git add -p'

##Codeception stuff
alias cr='codecept run'
alias cra='cr acceptance'
alias cru='cr unit'
alias crapi='cr api'
alias crf='cr functional'



function branch() {
	ref=$(git symbolic-ref HEAD)
	echo "${ref#refs/heads/}"
}

#Laravel alisases
alias laravel-create='composer create-project laravel/laravel'

export RBENV_ROOT="${HOME}/.rbenv"

if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
