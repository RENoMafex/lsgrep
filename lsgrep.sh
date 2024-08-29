#!/usr/bin/env bash

input="$1"

if command -v grc >/dev/null; then
	grc="true"
else
	grc="false"
fi

if [[ -z "$input" && "$grc" == "true" ]]; then
	grc ls -lAh --color=always
elif [[ -z "$input" && "$grc" == "false" ]]; then
	ls -lAh --color=always
elif [[ -n "$input" && "$grc" == "true" ]]; then
	ls -lAh --color=always | grc -c conf.ls grep $input
elif [[ -n "$input" && "$grc" == "false" ]]; then
	ls -lAh --color=always | grep $input
else
	echo "Something went wrong!"
	exit 1
fi
