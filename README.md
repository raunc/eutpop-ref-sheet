###

packages installed on ubuntu 18.04
- texlive-luatex

If pdf generation failed with error
```
error:  (type 0): cannot find file ''
  ==> Fatal error occurred, no output PDF file produced!
```
try this:
rm -rf ~/.texlive2017/texmf-var/luatex-cache/generic/*
