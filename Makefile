TEX = lualatex --synctex=1 --interaction=nonstopmode --output-directory ../build
GS = gs -dPDFX -dBATCH -dNOPAUSE -sColorConversionStrategy=UseDeviceIndependentColor -sProcessColorModel=DeviceCMYK -sDEVICE=pdfwrite -r720dpi

all: overview.pdf single_pages.pdf trifold.pdf single_pages_bw.pdf trifold_bw.pdf single_pages_flattened.pdf trifold_flattened.pdf

clean:
	rm -rf build
.PHONY: clean

single_pages.pdf: sequence_of_play.pdf actions.pdf mil_actions.pdf other_rules.pdf
	cd src; $(TEX) single_pages.tex
	cp build/single_pages.pdf pdf/eutpop_ref_sheet_single_pages.pdf
.PHONY: single_pages.pdf

single_pages_bw.pdf: sequence_of_play_bw.pdf actions_bw.pdf mil_actions_bw.pdf other_rules_bw.pdf
	cd src; $(TEX) --jobname=single_pages_bw "\let\ifrenderbw\iftrue\input{single_pages.tex}"
	cp build/single_pages_bw.pdf pdf/eutpop_ref_sheet_single_pages_bw.pdf
.PHONY: single_pages_bw.pdf

single_pages_flattened.pdf: single_pages.pdf
	$(GS) -sOutputFile=pdf/eutpop_ref_sheet_single_pages_flattened.pdf build/single_pages.pdf
.PHONY: single_pages_flattened.pdf

trifold.pdf: sequence_of_play.pdf actions.pdf mil_actions.pdf other_rules.pdf
	cd src; $(TEX) trifold.tex
	cp build/trifold.pdf pdf/eutpop_ref_sheet_trifold.pdf
.PHONY: trifold.pdf

trifold_bw.pdf: sequence_of_play_bw.pdf actions_bw.pdf mil_actions_bw.pdf other_rules_bw.pdf
	cd src; $(TEX) --jobname=trifold_bw "\let\ifrenderbw\iftrue\input{trifold.tex}"
	cp build/trifold_bw.pdf pdf/eutpop_ref_sheet_trifold_bw.pdf
.PHONY: trifold_bw.pdf

trifold_flattened.pdf: trifold.pdf
	$(GS) -sOutputFile=pdf/eutpop_ref_sheet_trifold_flattened.pdf build/trifold.pdf
.PHONY: trifold_flattened.pdf

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
