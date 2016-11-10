#!/bin/bash
##	This	script	is	written	by	Michele	Minighin
##	Make	sure	you	have	installed	the	texlive	packages
##	If	you	don't	wont	to	preserve	.aux,	.log,	.dvi	files	use	clean	options	like	$

echo	'Sto	convertendo	il	file...'
FILENAME=$1
latex	$1
TOPDF=${FILENAME%tex}
dvipdfm	$TOPDF"dvi"
echo	'-->>	Fine'
