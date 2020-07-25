# Generate PDF's 
#
# Prerequisites:
#
# - GNU make
# - latex/xelatex (Texlive)
# - EBGaramond font
#
TITLE			:=	'Gastronomie Pratique'
AUTHOR			:=	'Ali-Bab'
TITLE_UNDERSCORE	:=	$(shell echo $(TITLE) | tr  ' ' '_')
AUTHOR_UNDERSCORE 	:=	$(shell echo $(AUTHOR) | tr ' ' '_')

LATEX_LANG    		:= 	fr
LATEX_FONT    		:= 	EBGaramond-Regular

PT08			:= 	08pt
PT09			:= 	09pt
PT10			:= 	10pt
PT11			:= 	11pt
PT12			:= 	12pt
PT14			:= 	14pt

LATEX_DIR    		:= 	tex
COMP_DIR		:=	comp
PDF_DIR			:=	pdf

all:	pdf10 
 
.PHONY:	pdf10
pdf10:
	xelatex -output-directory=$(COMP_DIR) $(LATEX_DIR)/$(AUTHOR_UNDERSCORE)-$(TITLE_UNDERSCORE)-$(PT10).tex
	xelatex -output-directory=$(COMP_DIR) $(LATEX_DIR)/$(AUTHOR_UNDERSCORE)-$(TITLE_UNDERSCORE)-$(PT10).tex
	makeindex comp/$(AUTHOR_UNDERSCORE)-$(TITLE_UNDERSCORE)-$(PT10).idx
	xelatex -output-directory=$(COMP_DIR) $(LATEX_DIR)/$(AUTHOR_UNDERSCORE)-$(TITLE_UNDERSCORE)-$(PT10).tex
	- mv $(COMP_DIR)/$(AUTHOR_UNDERSCORE)-$(TITLE_UNDERSCORE)-$(PT10).pdf $(PDF_DIR)/
 
clean: 
	- rm -f $(COMP_DIR)/*
	- rm -f $(PDF_DIR)/*
