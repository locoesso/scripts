#!/bin/bash
MACHINE="$(uname -n)"
if [ "$MACHINE" == "beta" ]; then
	killall conky
	disper -S
	sleep 2
	conky -c ~/.conkycolors/conkyrc
	exit 1
else
	disper -s
	exit
fi
