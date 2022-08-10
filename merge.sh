#!/bin/bash
if [ ! -f dist/ahk.ahk ]; then
	mkdir dist
	touch dist/ahk.ahk
	echo '' > dist/ahk.ahk
fi
cat src/*.ahk > dist/ahk.ahk
