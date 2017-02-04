NAME	=	resume.pdf
MAIN	=	main.tex

RM		=	/bin/rm -f
SRC		=	$(shell ls -1 parts)
CC		=	pdflatex

all: $(NAME)

$(NAME):
	$(CC) -jobname=$(subst .pdf,,$(NAME)) $(MAIN)

clean:
	$(RM) *.aux *.log *.toc *.out

fclean: clean
	$(RM) $(NAME)

re: fclean all
