SHORT	=	resume_short.pdf
LONG	=	resume_long.pdf

RM		=	/bin/rm -f
SRC		=	$(shell ls -1 parts)
CC		=	pdflatex

.PHONY: $(SRC)

all: $(SHORT) $(LONG)

$(SHORT): $(SRC)
	$(CC) -jobname=$(subst .pdf,,$@) main_short.tex

$(LONG): $(SRC)
	$(CC) -jobname=$(subst .pdf,,$@) main_long.tex

clean:
	$(RM) *.aux *.log *.toc *.out

fclean: clean
	$(RM) $(SHORT) $(LONG)

re: fclean all
