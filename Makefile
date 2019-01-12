RESUME	=	resume.pdf

RM	=	rm -f
SRC	=	$(shell ls -1 parts)
CC	=	pdflatex

.PHONY: $(SRC)

all: $(RESUME)

$(RESUME): $(SRC)
	$(CC) -jobname=$(subst .pdf,,$@) main.tex

clean:
	$(RM) *.aux *.log *.toc *.out

fclean: clean
	$(RM) $(RESUME)

re: fclean all
