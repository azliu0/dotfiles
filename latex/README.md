# LaTeX

To take notes and do problem sets, I use my own style file, more details of which can be found [here](https://github.com/yellowtomato98/_andrew.sty).

Running
```sh
notes_template <dir>
```
will run a simple script that copies in relevant template files useful for note taking. Running
```sh
pset_template <dir>
``` 
does the same thing, but will copy files that are useful for writing up solutions to a problem set.

Once inside of a tex file, running ```\ll``` turns on [vimtex's](https://github.com/lervag/vimtex) live compilation. Then, running zathura asynchronously, i.e., with 
```sh
:!zathura <filename>.pdf &
```
will open the pdf compiled output that updates on every save. I've found this to be a really lightweight and easy way to take notes with LaTeX.

### screenshot of setup

![image](./images/demo.png)
