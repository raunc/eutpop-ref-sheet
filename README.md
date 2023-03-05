# EU:tPoP Reference Sheet

This is a reference sheet for those who want something more verbose than official Player Aid, but less verbose than Rules.
It includes most of the rules and presents them as bullet points.
It does not include setup rules and some things that are already presented in a concise way in the Rules (e.g. definitions on pages 3-5).

![trifold](/src/images/trifold.png)

## PDFs

* [eutpop_ref_sheet.pdf](./pdf/eutpop_ref_sheet.pdf) - Pages joined on 3xA4-size sheets, preceded by an additional page for general information.
* [eutpop_ref_sheet_single_pages.pdf](./pdf/eutpop_ref_sheet_single_pages.pdf) - Single pages in logical order.
* [eutpop_ref_sheet_single_pages_bw.pdf](./pdf/eutpop_ref_sheet_single_pages_bw.pdf) - Single pages in logical order, no colored background and text.
* [eutpop_ref_sheet_single_pages_flattened.pdf](./pdf/eutpop_ref_sheet_single_pages_flattened.pdf) - Single pages in logical order, no transparent objects or vector graphics, 720dpi. More reliable for printing, but larger file size and text is not searchable.
* [eutpop_ref_sheet_trifold.pdf](./pdf/eutpop_ref_sheet_trifold.pdf) - Single pages reordered for binding as a trifold (see image above).
* [eutpop_ref_sheet_trifold_bw.pdf](./pdf/eutpop_ref_sheet_trifold_bw.pdf) - Single pages reordered for binding as a trifold (see image above), no colored background and text.
* [eutpop_ref_sheet_trifold_flattened.pdf](./pdf/eutpop_ref_sheet_trifold_flattened.pdf) - Single pages reordered for binding as a trifold (see image above), no transparent objects or vector graphics, 720dpi. More reliable for printing, but larger file size and text is not searchable.

## Build

PDF generation is currently tested only on Ubuntu 18.04 and 22.04.

Install dependencies:

```shell
apt-get install make texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-luatex imagemagick ghostscript
```

Build all by running make:

```shell
make
```


### Troubleshooting

* If pdf generation fails with the following error:
```
error:  (type 0): cannot find file ''
  ==> Fatal error occurred, no output PDF file produced!
```
try removing cache:
```shell
rm -rf ~/.texlive2017/texmf-var/luatex-cache/generic/*
```

* Sometimes arrows do not render properly. Running `make` again has fixed it so far

### Notes about source files

I do not have permission to publish files created by Aegir Games, i.e their custom font and images used for icons.
So if you want to make changes and regenerate the PDFs, you need to obtain these from elsewhere, for example extract from PDF.
