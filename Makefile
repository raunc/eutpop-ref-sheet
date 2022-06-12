TEX = lualatex --synctex=1 --interaction=nonstopmode

all: overview.pdf

clean:
	rm -rf *.pdf *.log *.aux *.synctex.gz src/*.pdf src/*.log src/*.aux src/*.synctex.gz
.PHONY: clean

overview.pdf: notes.pdf joined.pdf
	cd src; $(TEX) overview.tex
.PHONY: overview.pdf

notes.pdf:
	cd src; $(TEX) notes.tex
.PHONY: notes.pdf

joined.pdf: sequence_of_play.pdf actions.pdf mil_actions.pdf other_rules.pdf
	cd src; $(TEX) joined.tex
.PHONY: joined.pdf

sequence_of_play.pdf:
	cd src; $(TEX) sequence_of_play.tex
.PHONY: sequence_of_play.pdf

actions.pdf:
	cd src; $(TEX) actions.tex
.PHONY: actions.pdf

mil_actions.pdf:
	cd src; $(TEX) mil_actions.tex
.PHONY: mil_actions.pdf

other_rules.pdf:
	cd src; $(TEX) other_rules.tex
.PHONY: other_rules.pdf
