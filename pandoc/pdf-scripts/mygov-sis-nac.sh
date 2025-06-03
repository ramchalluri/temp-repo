#!/usr/bin/bash

# -----------------------
# Make Changes Here 
# This script will convert the Markdown to PDF and move the file to the destination folder.
# -----------------------
src_parent_dir=/c/Data/workspace/git/citizen-access/architecture/documentation/docs/mygov/design/functions
dest_parent_dir=/c/Data/workspace/git/citizen-access/architecture/documentation/static/mygov/design/functions
doc_dir=account
doc_name=mygov-sis-nac
doc_version="v0.10"
doc_header_right="myGov NotifyAccountChange SIS"

# -----------------------
set -x 
cd ${src_parent_dir}/${doc_dir}
time pandoc -N \
--pdf-engine=xelatex \
--highlight-style breezedark \
--from=gfm \
--toc \
--toc-depth=3 \
--template eisvogel \
--listing \
--shift-heading-level-by=-1 \
-V listings-no-page-break=false \
-V toc-own-page=true \
-V table-use-row-colors=true \
-V theme=moon \
-V titlepage-rule-color="360049" \
-V header-left="${doc_version}" \
-V header-center="For Official Use Only" \
-V header-right="${doc_header_right}" \
-V footer-left="\\thedate" \
-V footer-center="For Official Use Only" \
-V footer-right="Page \\thepage" \
-V titlepage-background="../../../../../pandoc/backgrounds/myGov-corporate-template-sa-3.pdf" \
--lua-filter="../../../../../pandoc/filters/linebreaks.lua" \
-o ${doc_name}.pdf ${doc_name}.md  

mv ${doc_name}.pdf ${dest_parent_dir}/${doc_dir}
# -----------------------
