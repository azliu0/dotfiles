#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "usage: notes_template <dir>"
	exit 1
fi
cd "$1"
mkdir notes
cp -v -r $DOTFILES/latex/templates/notes/ "$1/notes"
cp -v $DOTFILES/latex/templates/{_andrew.sty,notes.tex} "$1"
mv notes.tex main.tex
