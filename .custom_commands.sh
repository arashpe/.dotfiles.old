#!/bin/bash

#aliases

alias vi='nvim'
alias zshrc='vi ~/.zshrc'
alias cmd='vi ~/.custom_commands.sh'
alias shd='shutdown -h now'
alias lnp='laravel new'
alias phpa='php artisan'
alias http='python -m http.server'
alias penv='python -m venv'
alias xstart='sudo xampp start'
alias xstop='sudo xampp stop'
alias xrestart='sudo xampp restart'


function phpm() {
	php artisan make:model $1 -m
}
