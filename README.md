# lsgrep

A shellscript to automatically pipe the output from `ls -lAh` to `grep`. If you have [grc](https://github.com/garabik/grc) installed, it will colorize the output like it would with `grc ls -lAh`.

## Installation

**Step 1:** Download `lsgrep` either by clicking [master.zip](https://github.com/RENoMafex/lsgrep/archive/refs/heads/master.zip) or some CLI tool like 
```bash
wget https://github.com/RENoMafex/lsgrep/archive/refs/heads/master.zip
```
or
```bash
curl -fsSL https://github.com/RENoMafex/lsgrep/archive/refs/heads/master.zip
```
or
```bash
git clone https://github.com/RENoMafex/lsgrep.git
```

If you use ``git clone`` you can skip **Step 2**.

**Step 2:** Unpack master.zip using a tool of your choice. On most Linux distros its possible to just use ``unzip master.zip`` in the Terminal.

**Step 3:** Install lsgrep by using 
```bash
./install.sh
```
