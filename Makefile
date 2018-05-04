RESUME	=	resume.pdf

RM		=	/bin/rm -f
SRC		=	$(shell ls -1 parts)
CC		=	pdflatex

.PHONY: $(SRC)

all: $(RESUME)

$(RESUME): $(SRC)
	$(CC) -jobname=$(subst .pdf,,$@) main.tex

clean:
	$(RM) *.aux *.log *.toc *.out

fclean: clean
	$(RM) $(SHORT) $(LONG)

re: fclean all
