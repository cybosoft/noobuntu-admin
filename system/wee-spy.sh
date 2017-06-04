#!/bin/bash

function wait_for_answer() {
	read -p "Please enter your choice:" $choice;
	
}

function display_hashline() {
	echo "####################################################################"
}

function show_options() {
	clear
	typer "Hey Root, Glad to see you";
	typer "How can I help you?";
	display_hashline
	sleep 0.5
	echo "1: Show system details";
	sleep 0.5
	echo "2: Show network details"; 
	sleep 0.5
	echo "3: Show disc usage"
	sleep 0.5
	echo "4: Show Top CPU consumers"
	sleep 0.5
	echo "";
	wait_for_answer
}


function typer() {
	local message=$1;
	for i in $(seq 1 ${#message})
	do
	 printf "%s" "${message:i-1:1}";
	 sleep 0.02
	done
	echo "";
}

if [ "$(whoami)" != "root" ]; then
	typer "Don't waste my time you bugger, bring sudo with you.";
	exit 1
else
	show_options
fi;
