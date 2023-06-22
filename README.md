# EU:tPoP Reference Sheet

This is a reference sheet for those who want something more verbose than official Player Aid, but less verbose than Rules.
It includes most of the rules and presents them as bullet points.
It does not include setup rules and some things that are already presented in a concise way in the Rules (e.g. definitions on pages 3-5).

![trifold](/src/images/trifold.png)

## PDFs

* [eutpop_ref_sheet.pdf](./pdf/eutpop_ref_sheet.pdf?raw=1) - Pages joined on 3xA4-size sheets, preceded by an additional page for general information.
* [eutpop_ref_sheet_single_pages.pdf](./pdf/eutpop_ref_sheet_single_pages.pdf?raw=1) - Single pages in logical order.
* [eutpop_ref_sheet_single_pages_bw.pdf](./pdf/eutpop_ref_sheet_single_pages_bw.pdf?raw=1) - Single pages in logical order, no colored background and text.
* [eutpop_ref_sheet_single_pages_flattened.pdf](./pdf/eutpop_ref_sheet_single_pages_flattened.pdf?raw=1) - Single pages in logical order, no transparent objects or vector graphics, 720dpi. More reliable for printing, but larger file size and text is not searchable.
* [eutpop_ref_sheet_trifold.pdf](./pdf/eutpop_ref_sheet_trifold.pdf?raw=1) - Single pages reordered for binding as a trifold (see image above).
* [eutpop_ref_sheet_trifold_bw.pdf](./pdf/eutpop_ref_sheet_trifold_bw.pdf?raw=1) - Single pages reordered for binding as a trifold (see image above), no colored background and text.
* [eutpop_ref_sheet_trifold_flattened.pdf](./pdf/eutpop_ref_sheet_trifold_flattened.pdf?raw=1) - Single pages reordered for binding as a trifold (see image above), no transparent objects or vector graphics, 720dpi. More reliable for printing, but larger file size and text is not searchable.

## Build

Latest version of PDFs were generated on Ubuntu 22.04.2 (Jammy Jellyfish) using LuaTeX version 1.14.0. For earlier versions, Ubuntu 18.04 (Bionic Beaver) has also been used, and it should still be possible, but different LuaTex version might render text a bit differently. We noticed a case where one LuaTex version managed to fit a sentence to a single line while another version failed at that.

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
