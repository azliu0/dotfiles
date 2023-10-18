#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "usage: pset_template <dir>"
	exit 1
fi
cp -v $DOTFILES/latex/templates/{_andrew.sty,pset.tex} "$1"
cp -v $DOTFILES/.config/latexmk/.latexmkrc "$1"
cd "$1"
mv pset.tex main.tex
