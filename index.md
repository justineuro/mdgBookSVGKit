## mdgBookSVGKit

**Here's an opportunity for one to "compose" minuets and to author a Collection Book!!!**  

---
<tt>Example of a minuet that can be created (click on the image below to listen to a midi):</tt>  
<script src='https://justineuro.github.io/abc2svg-2024-gh/abcweb-1.js' type='text/javascript'></script>
<script src='https://justineuro.github.io/abc2svg-2024-gh/snd-1.js' type='text/javascript'></script>
<style type='text/css'>
	svg {display:block}
</style>

<center>
%abc-4.93
%<![CDATA[
%%scale 0.70
%%pagewidth 23cm
%%bgcolor white
%%topspace 0
%%composerspace 0
%%leftmargin 0.80cm
%%rightmargin 0.80cm
X:189874916791621
T:7-7-7-7-7-7-7-7-7-7-7-7-7-7-7-7
%%setfont-1 Courier-Bold 12
T:$1K.516f::104:157:27:167:154:68:118:91:138:71:150:29:101:162:23:151::$0
T:$1Perm. No.: 189874916791621$0
M:3/8
L:1/8
Q:1/8=111
%%staves [1 2]
V:1 clef=treble
V:2 clef=bass
K:C
%1
[V:1]|: e/d/e/g/c'/g/ |\
[V:2]|: C,2z |\
%2
[V:1] e/d/e/g/c'/g/ |\
[V:2] C,2z |\
%3
[V:1] f/e/f/d/c/B/ |\
[V:2] [B,2G,2]z |\
%4
[V:1] cc/d/e |\
[V:2] [E,2C,2]z |\
%5
[V:1] d/^c/d/^f/a/f/ |\
[V:2] C,2z |\
%6
[V:1] gb/g/d/g/ |\
[V:2] B,,2z |\
%7
[V:1] e/a/g/b/^f/a/ \
[V:2] C,D,D,, \
%8a
[V:1]|1 [g2d2B2G2]z :|2
[V:2]|1 G,,G,/=F,/E,/D,/ :|2
%8b
[V:1] [g2d2B2G2]z |:\
[V:2] G,,B,/G,/^F,/E,/ |:\
%9
[V:1] [^fdA]!trill!f2 |\
[V:2] D,,/D,/^C,/D,/^C,/D,/ |\
%10
[V:1] g/b/d'/b/g |\
[V:2] [D,2B,,2][D,B,,] |\
%11
[V:1] [ecG]!trill!e2 |\
[V:2] C,/B,,/C,/D,/E,/^F,/ |\
%12
[V:1] B/d/g/d/B |\
[V:2] G,2G,, |\
%13
[V:1] e/d/e/g/c'/g/ |\
[V:2] [G,2C,2] [E,C,] |\
%14
[V:1] e/d/e/g/c'/g/ |\
[V:2] [G,2C,2][E,C,] |\
%15
[V:1] f/e/d/e/f/g/ |\
[V:2] A,/G,/F,/G,/A,/B,/ |\
%16
[V:1] c2z :|]
[V:2] C,G,,C,, :|]
%]]>
</center>
---
<br/>
  
This folder contains materials that allow the user to author a book containing a collection of [Musical Dice Games (MDG)](https://en.wikipedia.org/wiki/Musikalisches_W%C3%BCrfelspiel) minuets, generated based on the rules given in  [*Musikalisches Würfelspiel, K.516f* (Mozart, Wolfgang Amadeus)](http://imslp.org/wiki/Musikalisches_W%C3%BCrfelspiel,_K.516f_(Mozart,_Wolfgang_Amadeus)).

To creat a book, simply [download](https://github.com/justineuro/mdgBookSVGKit/archive/master.zip) (or [clone](`git clone https://github.com/justineuro/mdgBookSVGKit.git`) this project) to one's computer, unzip the downloaded archive, and at the command line inside the main folder (`mdgBookSVGKit-master` directory) issue the following command (pre-requisites: `BASH`, `ABCMIDI`, `ABCM2PS`, `Ghostscript`, `Inkscape`, and `LaTeX`):

```shell
bash HOWTO
```

Wait for a **few** minutes, i.e., until one gets the bash prompt again.  The compiled book in PDF format (`mdgBookSVGv1.pdf`), among other things, should be located in the `res` folder (subdirectory).  

## For the Impatient
To download and examine an example of a book (`mdgBookSVGv1_1.pdf`) that was generated in a similar manner, simply right-click (then "Save Link As ...") on the following image:

[![Front Cover](./mdgBookSVGv1-tit-125.jpg)](https://justineuro.github.io/mdgBookSVGKit/mdgBookSVGv1_1.pdf)

(**Note**: To enable the MIDI audio links in the book, one should download [mdgBookSVG_1-midi.zip](https://justineuro.github.io/mdgBookSVGKit/mdgBookSVG_1-midi.zip) and unzip in the same directory in one's computer that contains the book, i.e., the book and midi files have to be in the same directory).

## Important Parameters
To personalize one's generated book (in addition to the randomly generated minuets), one may want to change some of the default parameters/values in the following (all three files are initially found in the main directory but are eventually moved into the `res` folder): 

- `mdgBookSVGv1.tex` - (main latex file) see lines 35-45; also, one may have to occassionally change the \\topmargin and \\textheight values in lines 267 and 268, to ensure that each audio MIDI file will be on the same page as the corresponding musical score
- `mdgBookSVGv1-cover.tex`- makes the cover of the book; see lines 35-45 of `mdgBookSVGv1.tex` for default values
- `hyperref.cfg` - contains the `\hypersetup` keyvalues; one may wish to change the default value of `pdfauthor`, among other keyvalues; see the documentation for the TeX package `hyperref` for more information on these keyvalues.

Once the desired changes have been made to the files above, one can then re-compile the book by issuing, in the `res` subdirectoy, the last set of commmands in the HOWTO file:
```shell
pdflatex -synctex=1 -interaction=nonstopmode -shell-escape mdgBookSVGv1.tex
bibtex mdgBookSVGv1.aux
pdflatex -synctex=1 -interaction=nonstopmode -shell-escape mdgBookSVGv1.tex
pdflatex -synctex=1 -interaction=nonstopmode -shell-escape mdgBookSVGv1.tex
```

Also, line 32 of the `HOWTO` is set by default so that each new book created contains 250 minuets.  One may wish to change this number, as desired, to some other counting number.  This has to be done before issuing the `bash HOWTO` command within the `mdgBookSVGKit-master` directory.

## Similar Kits on GitHub
MDG Book kits similar to this may be found on related GitHub sites such as:

- [mdgBookSVG2Kit](https://justineuro.github.io/mdgBookSVG2Kit) - One-Command Kit for Creating MDG Double Counterpoints (Six Measures) Collection Book, the counterpoints are generated based on the rules given in C.P.E. Bach's [*Einfall, einen doppelten Contrapunct in der Octave von sechs Tacten zu machen, ohne die Regeln davon zu wissen*](https://www.jstor.org/stable/843301)
- [mdgBookSVG3Kit](https://justineuro.github.io/mdgBookSVG3Kit) - One-Command Kit for Creating MDG (Kirnberger) Minuet-Trios Collection Book, the minuet-trios are generated based on the rules given in [*Der allezeit fertige Polonoisen- und Menuettencomponist* (*1757*)](https://imslp.org/wiki/Der_allezeit_fertige_Polonoisen-_und_Menuettencomponist_(Kirnberger%2C_Johann_Philipp)) 
- [mdgBookSVG4Kit](https://justineuro.github.io/mdgBookSVG4Kit) - One-Command Kit for Creating MDG Minuet-Trios Collection Book, the minuet-trios are generated based on the rules given in [*Table pour composer des Minuets et des Trios &agrave; la infinie*](http://imslp.org/wiki/Table_pour_composer_des_Minuets_et_des_Trios_%C3%A0_la_infinie_(Stadler,_Maximilian)) (also known as or *Tabelle welcher aus man unzählige Menuetten und Trio für das Klavier herauswürfeln kann* or *Gioco Filarmonico o sia maniera facile per comporre un infinito numero di menuetti e trio, anche senza sapere il contrapunto*) 
- [mdgBookSVG4itKit](https://github.com/justineuro/mdgBookSVG4itKit) - MDG based on [*Gioco Filarmonico o sia maniera facile per comporre un infinito numero di menuetti e trio, anche senza sapere il contrapunto*](http://imslp.org/wiki/Table_pour_composer_des_Minuets_et_des_Trios_%C3%A0_la_infinie_(Stadler,_Maximilian)); similar to  [mdgBookSVG4Kit](https://github.com/justineuro/mdgBookSVG4Kit) but arranged for three (3) instruments
- [mdgBookSVG6Kit](https://justineuro.github.io/mdgBookSVG6Kit) - One-Command Kit for Creating MDG Scottish Dances (Dance-Trios) Collection Book, each dance-trio is generated based on the rules given in [*Kunst, Schottische Taenze zu componiren, ohne musicalisch zu sein*](https://imslp.org/wiki/Kunst%2C_Schottische_Taenze_zu_componiren%2C_ohne_musicalisch_zu_sein_(Gerlach%2C_Gustav))
- 
## Related Sites
- [Mozart](https://marian-aldenhoevel.de/mozart/) - A site maintained by Marian Aldenh&ouml;vel allows the visitor to generate a MDG (user-specified or randomly-generated) and the corresponding audio (<tt> midi</tt>, <tt>wav</tt>) and image files (<tt>pdf</tt>, <tt>png</tt>) based on *Musikalisches W&uuml;rferspiel, K. 516f*.
- [Opus Infinity](https://opus-infinity.org/) - Collaborative work of Robbert Harms, Hein Moors, and Suus van Petegem whose goal is to unravel the mystery behind the tables used for generating MDGs.  Site visitors can generate MDGs based on works of Kirnberger, Mozart, Stadler/Haydn, and Bach.  Corresponding audio files (<tt>mid</tt>, <tt>ogg</tt>, and/or <tt>mp3</tt>) and image files (<tt>pdf</tt> or <tt>png</tt>) are also made available for listening, viewing, or downloading.
- [Mozart](http://sunsite.univie.ac.at/Mozart/dice/) - A site maintained by John Chuang that allows the site visitor to generate MDGs based on the work of Stadler/Haydn.
- [`mozart.zip`](http://www.amaranthpublishing.com/MozartDiceGame.htm) -  This is a Windows software (&copy; 1995 VisionSoft) by John Chuang and Stephen Goodwin that generates MDG based on input from user and is available for <em> free</em> from  [Amaranth Publishing](http://www.amaranthpublishing.com/MozartDiceGame.htm). 
-  [Mozart - Musical Game in C K. 516f*](http://www.asahi-net.or.jp/~rb5h-ngc/e/k516f.htm), Mozart Studies Online - The site of Hideo Noguchi that offers an explanation linking <tt> Musikalisches W&uuml;rferspiel, K. 516f</tt> and <tt>K. 294d (K. Anh. C 30.01)</tt>.
- [mdgBookSVG6Kit](https://justineuro.github.io/mdgBookSVG6Kit) - One-Command Kit for Creating MDG Scottish Dances (Dance-Trios) Collection Book, each dance-trio is generated based on the rules given in [*Kunst, Schottische Taenze zu componiren, ohne musicalisch zu sein*](https://imslp.org/wiki/Kunst%2C_Schottische_Taenze_zu_componiren%2C_ohne_musicalisch_zu_sein_(Gerlach%2C_Gustav))

## Acknowledgements
My sincerest gratitude to Chris Walshaw et al. for the [ABC music notation](http://www.abcnotation.com);  Jean-Francois Moine for [abcm2ps](http://moinejf.free.fr/) and the accompanying examples, templates, and pointers for the appropriate use of these resources;  Guido Gonzato for the [ABC Plus Project](http://abcplus.sourceforge.net/) and the [abcmidi resources](http://abcplus.sourceforge.net/#abcMIDI) available there, more especially for the ABC resource book *Making Music with ABC 2*; James R. Allwright and Seymour Shlien for [abcmidi](http://abc.sourceforge.net/abcMIDI) source and binaries; Nils Liberg, Jan Wybren de Jong, Seymour Shlien et al. for [EasyABC](https://easyabc.sourceforge.net); [Artifex, Inc.](https://artifex.com) for `Ghostscript v.10.00.0` (includes the `ps2pdf` converter); [`Inkscape v.1.2.2`](https://www.inkscape.org) for the tool for converting SVGs to PDFs for inclusion into LaTeX documents; William Schelter for [`Maxima v.5.47.0`](https://maxima.sourceforge.io)---used for computing the permutation number; Colomban Wendling et. al for [Geany 2.0 IDE](https://www.geany.org); and [<tt>User:Martin H</tt>](https://tex.stackexchange.com/users/632/martin-h) for his [reply](https://tex.stackexchange.com/questions/2099/how-to-include-svg-diagrams-in-latex) to a TeX/LaTeX Stack Exchange question on including SVGs into LaTeX documents.   Special thanks also to the [International Music Score Library Project (IMSLP)](http://imslp.org/) for making available the score for *Musikalisches Würfelspiel, K.516f* and [Amaranth Publishing](http://www.amaranthpublishing.com/MozartDiceGame.htm) for a copy of <tt>mozart.zip</tt>.  Ditto to Machtelt Garrels for the book [Bash Guide for Beginners](http://tldp.org/LDP/Bash-Beginners-Guide/html/Bash-Beginners-Guide.html), Vivek Gite for the book [Linux Script Shell Tutorial](http://www.freeos.com/guides/lsst/), Steve Parker for the [Unix/Linux Shell Cheatsheet](http://steve-parker.org/sh/cheatsheet.pdf).  John Fogarty's GitHub Site: [Latex CreateSpace BookCover](https://github.com/jfogarty/latex-createspace-bookcover) and Peter Wilson's reply in TeX/LaTeX Stack Exchange on [designing a book cover](https://tex.stackexchange.com/questions/17579/how-can-i-design-a-book-cover) were sources of ideas, information, and materials for creating the book cover and title page, thanks to both of them. Many thanks to the [Debian Project](https://www.debian.org) for the Debian 8 (Jessie) GNU/Linux OS, [TeXLive](http://www.tug.org/texlive/) for the TeX distribution, to Brian Fox for [Bash](https://www.gnu.org/software/bash/), and [GitHub](https://github.com) for its generosity in providing space for [this project](https://github.com/justineuro/mdgBookSVGKit).

## License
<p xmlns:cc="https://creativecommons.org/ns#" xmlns:dct="https://purl.org/dc/terms/">
    <a property="dct:title" rel="cc:attributionURL" href="https://github.com/justineuro/mdgBookSVGKit">mdgBookSVGKit</a> by 
    <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://justineuro.github.io/">Justine Leon A. Uro</a> is marked with 
    <a href="https://creativecommons.org/publicdomain/zero/1.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC0 1.0 Universal
        <img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt="">
        <img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/zero.svg?ref=chooser-v1" alt="">
    </a>
</p>