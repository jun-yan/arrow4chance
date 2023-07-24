nyc311clean.html: nyc311clean.qmd
	quarto render

csv2arrow.pdf: csv2arrow.qmd
	quarto render csv2arrow.qmd --to pdf

clean:
	rm -f nyc311clean.html
