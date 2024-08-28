#!/usr/bin/env bash

input="$1"

ls -lAh --color=always | grc -c conf.ls grep .$input
