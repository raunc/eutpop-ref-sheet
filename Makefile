TEX = lualatex --synctex=1 --interaction=nonstopmode --output-directory ../build

all: overview.pdf print_1_sided.pdf print_2_sided.pdf

clean:
	rm -rf build
.PHONY: clean

print_1_sided.pdf: sequence_of_play.pdf actions.pdf mil_actions.pdf other_rules.pdf
	cd src; $(TEX) print_1_sided.tex
	cp build/print_1_sided.pdf pdf/eutpop_ref_sheet_print_1_sided.pdf
.PHONY: print_1_sided.pdf

print_2_sided.pdf: sequence_of_play.pdf actions.pdf mil_actions.pdf other_rules.pdf
	cd src; $(TEX) print_2_sided.tex
	cp build/print_2_sided.pdf pdf/eutpop_ref_sheet_print_2_sided.pdf
.PHONY: print_2_sided.pdf

overview.pdf: joined.pdf
	cd src; $(TEX) overview.tex
	cp build/overview.pdf pdf/eutpop_ref_sheet.pdf
.PHONY: overview.pdf

joined.pdf: sequence_of_play.pdf actions.pdf mil_actions.pdf other_rules.pdf
	cd src; $(TEX) joined.tex
.PHONY: joined.pdf

sequence_of_play.pdf:
	mkdir --parents build
	cd src; $(TEX) sequence_of_play.tex
.PHONY: sequence_of_play.pdf

actions.pdf:
	mkdir --parents build
	cd src; $(TEX) actions.tex
.PHONY: actions.pdf

mil_actions.pdf:
	mkdir --parents build
	cd src; $(TEX) mil_actions.tex
.PHONY: mil_actions.pdf

other_rules.pdf:
	mkdir --parents build
	cd src; $(TEX) other_rules.tex
.PHONY: other_rules.pdf
