#!/bin/bash
MACHINE="$(uname -n)"
if [ "$MACHINE" == "beta" ]; then
	killall conky
	disper -s
	sleep 2
	conky -c ~/.conkycolors/conkyrc
	exit 1
else
	disper -S
	exit
fi
