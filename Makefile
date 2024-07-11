csv2arrow.pdf: csv2arrow.qmd
	quarto render csv2arrow.qmd --to jasa-pdf

csv2arrow.html: csv2arrow.qmd
	quarto render csv2arrow.qmd --to jasa-html

clean:
	rm -f csv2arrow.html csv2arrow.pdf
