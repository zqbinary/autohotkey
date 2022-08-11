#!/bin/bash
if [ ! -f dist/ahk.ahk ];  then
	if [ ! -d dist/ahk.ahk ];  then
		mkdir dist
	fi
	touch dist/ahk.ahk
	echo '' >dist/ahk.ahk
fi
target='./dist/ahk.ahk'
touch "$target"
echo '' >"$target"
for file in $(ls ./src);  do
	echo -e "\n; ===================\n; #$file\n; ===================" >>"$target"
	cat "./src/$file" >>"$target"
done
