all: /usr/local/bin/lsgrep

/usr/local/bin/lsgrep: lsgrep.sh
	sudo cp -fv lsgrep.sh /usr/local/bin/lsgrep

clean:
	sudo rm -rfv /usr/local/bin/lsgrep
