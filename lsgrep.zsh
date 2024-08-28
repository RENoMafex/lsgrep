#!/usr/bin/env bash

input="$1"

ls -lAh | grc -c conf.ls grep .$input
