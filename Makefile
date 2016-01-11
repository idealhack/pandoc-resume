all:    clean convert open

convert:
	pandoc resume.md -o resume.pdf --latex-engine=xelatex -H header.latex

clean:
	rm -f resume.pdf

open:
	open resume.pdf
