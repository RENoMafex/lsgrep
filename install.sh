#!/usr/bin/env bash



echo "Welcome to the Installation of lsgrep!"
echo ""
read -r -p "Do you want to install Systemwide (could need sudo) or only for user \"$USER\" [s/U] " response
if [[ "$response" =~ ^([sS])$ ]]; then
	INSTALLDIR="/usr/local/bin"
else
	INSTALLDIR="$HOME/bin"
fi

echo "Copying lsgrep.sh to $INSTALLDIR/lsgrep"

cp -fv lsgrep.sh $INSTALLDIR/lsgrep
echo "done!"
echo ""

read -r -p "Do you want to alias \"lg\" to \"lsgrep\" [y/N] " response
if [[ "$response" =~ ^([yY])$ ]]; then
	echo 'alias lg="lsgrep"' >>$HOME/.profile
fi
echo "done!"
