# EU:tPoP Reference Sheet

This is a reference sheet for those who want something more verbose than official Player Aid, but less verbose than Rules.
It includes most of the rules and presents them as bullet points.
It does not include setup rules and some things that are already presented in a concise way in the Rules (e.g. definitions on pages 3-5).

## PDFs

* [eutpop_ref_sheet.pdf](./pdf/eutpop_ref_sheet.pdf) - Pages joined on 3xA4-size sheets, preceded by an additional page for general information.
* [eutpop_ref_sheet_print_1_sided.pdf](./pdf/eutpop_ref_sheet_print_1_sided.pdf) - Single pages in logical order.
* [eutpop_ref_sheet_print_1_sided_bw.pdf](./pdf/eutpop_ref_sheet_print_1_sided_bw.pdf) - Same as previous but without colored background and text.
* [eutpop_ref_sheet_print_2_sided.pdf](./pdf/eutpop_ref_sheet_print_2_sided.pdf) - Single pages reordered for 2-sided print.
* [eutpop_ref_sheet_print_2_sided_bw.pdf](./pdf/eutpop_ref_sheet_print_2_sided_bw.pdf) - Same as previous but without colored background and text.

## Build

PDF generation is currently tested only on Ubuntu 18.04. 

Install dependencies:

```shell
apt-get install make texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-luatex imagemagick
```

Build all by running make:

```shell
make
```


### Troubleshooting

If pdf generation fails with the following error:
```
error:  (type 0): cannot find file ''
  ==> Fatal error occurred, no output PDF file produced!
```
try removing cache:
```shell
rm -rf ~/.texlive2017/texmf-var/luatex-cache/generic/*
```

### Notes about source files

I do not have permission to publish files created by Aegir Games, i.e their custom font and images used for icons.
So if you want to make changes and regenerate the PDFs, you need to obtain these from elsewhere, for example extract from PDF.
