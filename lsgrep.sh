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
	/bin/ls -lAh --color=always | grc -c conf.ls grep --ignore-case -E "(:[0-9]{2}|  [0-9]{4}) .*$input.*$"
elif [[ -n "$input" && "$grc" == "false" ]]; then
	ls -lAh --color=always | grep --ignore-case -E "(:[0-9]{2}|  [0-9]{4}) .*$input.*$"
else
	echo "Something went wrong!"
	exit 1
fi
