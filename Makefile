TEX = lualatex --synctex=1 --interaction=nonstopmode --output-directory ../build

all: overview.pdf print_1_sided.pdf print_2_sided.pdf print_1_sided_bw.pdf print_2_sided_bw.pdf

clean:
	rm -rf build
.PHONY: clean

print_1_sided.pdf: sequence_of_play.pdf actions.pdf mil_actions.pdf other_rules.pdf
	cd src; $(TEX) print_1_sided.tex
	cp build/print_1_sided.pdf pdf/eutpop_ref_sheet_print_1_sided.pdf
.PHONY: print_1_sided.pdf

print_1_sided_bw.pdf: sequence_of_play_bw.pdf actions_bw.pdf mil_actions_bw.pdf other_rules_bw.pdf
	cd src; $(TEX) --jobname=print_1_sided_bw "\let\ifrenderbw\iftrue\input{print_1_sided.tex}"
	cp build/print_1_sided_bw.pdf pdf/eutpop_ref_sheet_print_1_sided_bw.pdf
.PHONY: print_1_sided_bw.pdf

print_2_sided.pdf: sequence_of_play.pdf actions.pdf mil_actions.pdf other_rules.pdf
	cd src; $(TEX) print_2_sided.tex
	cp build/print_2_sided.pdf pdf/eutpop_ref_sheet_print_2_sided.pdf
.PHONY: print_2_sided.pdf

print_2_sided_bw.pdf: sequence_of_play_bw.pdf actions_bw.pdf mil_actions_bw.pdf other_rules_bw.pdf
	cd src; $(TEX) --jobname=print_2_sided_bw "\let\ifrenderbw\iftrue\input{print_2_sided.tex}"
	cp build/print_2_sided_bw.pdf pdf/eutpop_ref_sheet_print_2_sided_bw.pdf
.PHONY: print_2_sided_bw.pdf

overview.pdf: joined.pdf
	cd src; $(TEX) overview.tex
	cp build/overview.pdf pdf/eutpop_ref_sheet.pdf
.PHONY: overview.pdf

overview_bw.pdf: joined_bw.pdf
	cd src; $(TEX) --jobname=overview_bw "\let\ifrenderbw\iftrue\input{overview.tex}"
.PHONY: overview_bw.pdf

joined.pdf: sequence_of_play.pdf actions.pdf mil_actions.pdf other_rules.pdf
	cd src; $(TEX) joined.tex
.PHONY: joined.pdf

joined_bw.pdf: sequence_of_play_bw.pdf actions_bw.pdf mil_actions_bw.pdf other_rules_bw.pdf
	cd src; $(TEX) --jobname=joined_bw "\let\ifrenderbw\iftrue\input{joined.tex}"
.PHONY: joined_bw.pdf

sequence_of_play.pdf:
	mkdir --parents build
	cd src; $(TEX) sequence_of_play.tex
.PHONY: sequence_of_play.pdf

sequence_of_play_bw.pdf:
	mkdir --parents build
	cd src; $(TEX) --jobname=sequence_of_play_bw "\let\ifrenderbw\iftrue\input{sequence_of_play.tex}"
.PHONY: sequence_of_play_bw.pdf

actions.pdf:
	mkdir --parents build
	cd src; $(TEX) actions.tex
.PHONY: actions.pdf

actions_bw.pdf:
	mkdir --parents build
	cd src; $(TEX) --jobname=actions_bw "\let\ifrenderbw\iftrue\input{actions.tex}"
.PHONY: actions_bw.pdf

mil_actions.pdf:
	mkdir --parents build
	cd src; $(TEX) mil_actions.tex
.PHONY: mil_actions.pdf

mil_actions_bw.pdf:
	mkdir --parents build
	cd src; $(TEX) --jobname=mil_actions_bw "\let\ifrenderbw\iftrue\input{mil_actions.tex}"
.PHONY: mil_actions_bw.pdf

other_rules.pdf:
	mkdir --parents build
	cd src; $(TEX) other_rules.tex
.PHONY: other_rules.pdf

other_rules_bw.pdf:
	mkdir --parents build
	cd src; $(TEX) --jobname=other_rules_bw "\let\ifrenderbw\iftrue\input{other_rules.tex}"
.PHONY: other_rules_bw.pdf

images/background.png:
	cd src; $(TEX) --shell-escape background.tex; mv background.png images/
