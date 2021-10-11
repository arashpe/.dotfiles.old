#!/bin/bash

#system commands
function zshrc() {
	vim ~/.zshrc
}
function custom_commands() {
	vim ~/.custom_commands.sh
}
function shd() {
	shutdown -h now
}
#php commands
function lnp() {
	laravel new $@
}

function phpa() {
	php artisan $@
}
function phpm() {
	php artisan make:model $1 -m
}
#python commands
function py() {
	python $@
}
function http() {
	python -m http.server 
}
function penv() {
	python -m venv $@
}
#xampp 
function xstart() {
	sudo xampp start
}
function xstop() {
	sudo xampp stop
}
function xrestart() {
	sudo xampp restart
}
