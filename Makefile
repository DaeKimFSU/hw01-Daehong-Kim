#	Makefile
#	be	careful	to	use	tabs	**not spaces**!

#	define	"all""	as	the	main	pdf
all:	doc.pdf

#	compile	.tex	file	to	.pdf
#	depends	on	the	tex	file	and	the	figure
doc.pdf:	doc.tex	plot.png
#	first,	generate	the	pdf
	pdflatex	doc.tex
	#	then,	remove	the	auxillary	files	latex	generates
	rm	-f	*.bbl	*.log	*.synctex.gz	*.aux	*.out
	
#	create	.png	plot
#	doesn't	depend	on	any	other	files
plot.png:	create-plot.R
	#	run	R	code
	Rscript	create-plot.R
#	remove junk	R	plot,	see https://github.com/tidyverse/ggplot2/issues/2787
	rm	-f	Rplots.pdf

#	delete	these	files	to	clean
clean:
	rm	-f	plot.png	#	deletes	plot
	rm	-f	doc.pdf	#	deletes	pdf	document