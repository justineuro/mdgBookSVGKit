#!/bin/bash
#===================================================================================
#
#	 FILE:	mdgEntriesSVG2.sh 
#
#	USAGE:	mdgEntriesSVG2.sh [/path/to/listOfSVGFiles]
#
# DESCRIPTION:	Used for generating needed LaTeX codes for inclusion of SVGs into LaTeX
#
#      AUTHOR:	J.L.A. Uro (justineuro@gmail.com)
#     VERSION:	1.0.1
#     LICENSE:	Creative Commons Attribution 4.0 International License (CC-BY)
#     CREATED:	2017.09.08 15:58:16 +08
#    REVISION:	2024/07/12 19:23:59
#==================================================================================

#----------------------------------------------------------------------------------
# input the list of SVG files; create the output filename, backup previous if exists
#----------------------------------------------------------------------------------
svgfiles=$1

filen=$svgfiles.output
if [ -f $filen ]; then
 mv $filen $filen.bak
fi

#----------------------------------------------------------------------------------
# create cat-to-output-file function
#----------------------------------------------------------------------------------
catToFile(){
	cat >> $filen << EOT
$1
EOT
}

#----------------------------------------------------------------------------------
# write entries into output file
#----------------------------------------------------------------------------------
i=0
while read ifile; 
do
	i=`expr $i + 1`
	inkscape --export-filename=${ifile/.svg/}.pdf --export-area-drawing --export-latex $ifile	
	echo -e "file $i: converted $ifile to \n\t ${ifile/.svg/}.pdf, \n\t ${ifile/.svg/}.pdf_tex"
	ifileA=${ifile/.svg/}
	ifileB=${ifileA/K516f-/}
	catToFile "\addcontentsline{toc}{subsection}{$ifileB}
\begin{figure}[H]
	\centering
	\def\svgwidth{\columnwidth}
	\input{${ifile/.svg}.pdf_tex}
\end{figure}
\nopagebreak[4]
{\footnotesize For audio (midi): \hyperref{./${ifile/.svg/}.mid}{}{}{${ifile/.svg/}.mid}}
"
done < $svgfiles
###
##
#
