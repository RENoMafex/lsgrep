#!/usr/bin/env bash



echo "Welcome to the Installation of lsgrep!"
echo ""
read -r -p "Do you want to install Systemwide (might need sudo) or only for user \"$USER\" [s/U] " response
if [[ "$response" =~ ^([sS])$ ]]; then
	INSTALLDIR="/usr/local/bin"
else
	INSTALLDIR="$HOME/bin"
fi

echo "Copying lsgrep.sh to $INSTALLDIR/lsgrep"

mkdir -p $INSTALLDIR

cp -fv lsgrep.sh $INSTALLDIR/lsgrep
echo "done!"
echo ""

read -r -p "Do you want to alias \"lg\" to \"lsgrep\" (only for user $USER) [y/N] " response
if [[ "$response" =~ ^([yY])$ ]]; then
	echo 'alias lg="lsgrep"' >>$HOME/.profile
	echo "done!"
fi
echo ""

read -r -p "Do you want to Remove the installation files? [y/N] " response
if [[ "$response" =~ ^([yY])$ ]]; then
	selfdir=$(dirname "$(realpath "$0")")
	rm -rfv $selfdir
	echo "done!"
fi

echo ""
echo "Thank you for installing lsgrep"
