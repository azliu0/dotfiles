#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "usage: pset_template <dir>"
	exit 1
fi
cp -v $DOTFILES/.config/latex/templates/pset.tex "$1"
cp -v $DOTFILES/.config/latexmk/.latexmkrc "$1"
cd "$1"
mv pset.tex main.tex
