#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "usage: notes_template <dir>"
	exit 1
fi
cd "$1"
mkdir notes
cp -v -r $DOTFILES/.config/latex/templates/notes/ "$1/notes"
cp -v $DOTFILES/.config/latex/templates/notes.tex "$1"
cp -v $DOTFILES/.config/latexmk/.latexmkrc "$1"
mv notes.tex main.tex
