#!/usr/bin/env bash

input="$1"

if command -v grc >/dev/null; then
	ls -lAh --color=always | grc -c conf.ls grep .$input
else
	ls -lAh --color=always | grep .$input
fi
