#!/bin/bash
if [ ! -f dist/ahk.ahk ]; then
	if [ ! -d dist/ahk.ahk ]; then
		mkdir dist
	fi
	touch dist/ahk.ahk
	echo '' >dist/ahk.ahk
fi
cat src/*.ahk >dist/ahk.ahk
