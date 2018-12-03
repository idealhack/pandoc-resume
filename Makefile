all:       resume-zh resume-en
resume-zh: clean-zh convert-zh open-zh
resume-en: clean-en convert-en open-en

convert-zh:
	pandoc resume-zh.md -o resume-zh.pdf --pdf-engine=xelatex -H header-zh.latex

convert-en:
	pandoc resume-en.md -o resume-en.pdf --pdf-engine=xelatex -H header-en.latex

clean-zh:
	rm -f resume-zh.pdf

clean-en:
	rm -f resume-en.pdf

open-zh:
	open resume-zh.pdf

open-en:
	open resume-en.pdf
