#!/bin/bash

#aliases

alias vi='nvim'
alias zshrc='vi ~/.zshrc'
alias cmd='vi ~/.custom_commands.sh'
alias shd='shutdown -h now'
alias lnp='laravel new'
alias pa='php artisan'
alias pas='php artisan serv'
alias http='python -m http.server'
alias penv='python -m venv'
alias xstart='sudo xampp start'
alias xstop='sudo xampp stop'
alias xrestart='sudo xampp restart'
alias bspwmrc='vi ~/.config/bspwm/bspwmrc'
alias picomrc='vi ~/.config/picom/picom.conf'
alias sxrch='vi ~/.config/sxhkd/sxhkdrc'


function phpm() {
	php artisan make:model $1 -m
}
