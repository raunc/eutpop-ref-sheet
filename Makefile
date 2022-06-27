TEX = lualatex --synctex=1 --interaction=nonstopmode

all: overview.pdf print_1_sided.pdf print_2_sided.pdf

clean:
	rm -rf *.pdf *.log *.aux *.synctex.gz src/*.pdf src/*.log src/*.aux src/*.synctex.gz
.PHONY: clean

print_1_sided.pdf: sequence_of_play.pdf actions.pdf mil_actions.pdf other_rules.pdf
	cd src; $(TEX) print_1_sided.tex
	cp src/print_1_sided.pdf pdf/eutpop_ref_sheet_print_1_sided.pdf
.PHONY: print_1_sided.pdf

print_2_sided.pdf: sequence_of_play.pdf actions.pdf mil_actions.pdf other_rules.pdf
	cd src; $(TEX) print_2_sided.tex
	cp src/print_2_sided.pdf pdf/eutpop_ref_sheet_print_2_sided.pdf
.PHONY: print_2_sided.pdf

overview.pdf: joined.pdf
	cd src; $(TEX) overview.tex
	cp src/overview.pdf pdf/eutpop_ref_sheet.pdf
.PHONY: overview.pdf

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
