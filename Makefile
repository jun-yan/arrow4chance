MAIN = csv2arrow
MAIN_QMD = $(MAIN).qmd
MAIN_LONG_QMD = $(MAIN)_long.qmd
PDFOUT  = $(MAIN).pdf
HTMLOUT = $(MAIN).html


.PHONY: pdf html
pdf: $(PDFOUT)
html: $(HTMLOUT)


$(PDFOUT): $(MAIN_QMD)
	quarto render $(MAIN_QMD) --to jasa-pdf

$(HTMLOUT): $(MAIN_QMD) # allows html to have more results
	sed 's/eval: false/eval: true/' $(MAIN_QMD) > $(MAIN_LONG_QMD)
	quarto render $(MAIN_LONG_QMD) --to jasa-html

clean:
	rm -f csv2arrow.html csv2arrow.pdf
