#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

function doIt() {
	find . -type f \
		! -path "./.git/*" \
		! -name ".DS_Store" \
		! -name "brew.sh" \
		! -name "bootstrap.sh" \
		! -name "README.md" \
		-print0 | while IFS= read -r -d '' file; do
		target="$HOME/${file#./}"
		if [ -e "$target" ]; then
			rm "$target"
		fi
		ln -s "$(pwd)/$file" "$target"
	done
	source ~/.zshrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may delete existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
