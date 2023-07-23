nyc311clean.html: nyc311clean.qmd
	quarto render

clean:
	rm -f nyc311clean.html
