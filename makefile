all: lsgrep

lsgrep: /usr/local/bin/lsgrep

/usr/local/bin/lsgrep: lsgrep.sh
	sudo cp -fv lsgrep.zsh /usr/local/bin/lsgrep

clean:
	sudo rm -rfv /usr/local/bin/lsgrep
