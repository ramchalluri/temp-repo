---
sidebar_position: 1
title: how-to-guide
id: how-to-guide
---

# How to Guide for this site  
This guide will list all tips and tricks for working with this documentation site.

## Pandoc

### Installing Pandoc
1. Install Pandoc - https://pandoc.org/installing.html
1. Install texlive - https://www.tug.org/texlive/acquire-netinstall.html

### Markdown to PDF Conversion
More details can be obtained from https://pandoc.org/MANUAL.html

```shell
pandoc -N --pdf-engine=xelatex --highlight-style breezedark \
--from=gfm \
--template eisvogel \
-V toc-own-page=true \
-V table-use-row-colors=true \
-V theme=moon \
-V classoption=landscape \
-V titlepage="true" \
-V lang="en-GB" \
-V titlepage-rule-color="360049" \
-V header-left="\\hspace{1cm}" \
-V header-right="\\thetitle" \
-V footer-left="\\hspace{1cm}" \
-V footer-center="For Official Use Only" \
-V footer-right="Page \\thepage" \
-V titlepage-background="../../../../pandoc/backgrounds/digital-identity-bg.pdf" \
-o di-rp-casa-mycasa-portal.pdf di-rp-casa-mycasa-portal.md
```

Using GitBash we can simplify the above command with alias.

```text
export GIT_DIR=GIT_SOURCE_FOLDER
alias pandoc_pdf='cd $GIT_DIR/citizen-access/architecture/documentation/docs/digital-identity/onboarding/rp; pandoc -N --pdf-engine=xelatex --highlight-style breezedark --from=gfm --template eisvogel -V toc-own-page=true -V table-use-row-colors=true -V theme=moon -V classoption=landscape -V titlepage="true" -V lang="en-GB" -V titlepage-rule-color="360049" -V header-left="\\hspace{1cm}" -V header-right="\\thetitle" -V footer-left="\\hspace{1cm}" -V footer-center="For Official Use Only" -V footer-right="Page \\thepage" -V titlepage-background="../../../../pandoc/backgrounds/digital-identity-bg.pdf" '
```

To generate pdfs based on a landscape orientation, use the background digital-identity-bg-landscape.pdf
Full command for reference as below:

```text
pandoc -N --pdf-engine=xelatex --highlight-style breezedark --from=gfm --template eisvogel -V toc-own-page=true -V table-use-row-colors=true -V theme=moon -V titlepage-rule-color="360049" -V header-left="\hspace{1cm}" -V header-right="\thetitle" -V footer-left="\hspace{1cm}" -V footer-center="For Official Use Only" -V footer-right="Page \thepage" -V titlepage-background="../../../../pandoc/backgrounds/digital-identity-bg-landscape.pdf" -o di-rp-dha-exchange.pdf di-rp-dha-exchange.md
```

### Docx to Markdown Conversion

```shell
pandoc -t gfm --extract-media . -o file.md mygov-oidc-dev-guide.docx
```

1. URL Decode
1. XML Convert
1. Images Convert
    ```(<img src=\")(.*)(.png\".*\/>)```
    ```![]\($2\.png\)```
1. Search for > and replace it with ```bash/shell```
1. search for \_ and replace it with _

### Markdown to Docx Conversion
More details can be obtained from https://pandoc.org/MANUAL.html

```shell
pandoc --highlight-style breezedark digital-identity-hla.md -o digital-identity-hla.docx

pandoc -o custom-reference.docx --print-default-data-file reference.docx

pandoc -t docx digital-identity-hla.md --reference-doc=mygov-reference.docx -o digital-identity-hla.docx

```
