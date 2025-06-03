
# Pandoc Scripts
## OIDC Guide
cd /c/Data/workspace/git/citizen-access/architecture/documentation/docs/mygov/standards/oidc
pandoc -N \
--pdf-engine=xelatex \
--highlight-style breezedark \
--from=gfm \
--toc \
--toc-depth=3 \
--template eisvogel \
--listing \
--shift-heading-level-by=-1 \
-V listings-no-page-break=true \
-V toc-own-page=true \
-V table-use-row-colors=true \
-V theme=moon \
-V titlepage-rule-color="360049" \
-V header-left="v1.00.24" \
-V header-center="For Official Use Only" \
-V header-right="\\thetitle" \
-V footer-left="\\thedate" \
-V footer-center="For Official Use Only" \
-V footer-right="Page \\thepage" \
-V titlepage-background="../../../../pandoc/backgrounds/myGov-corporate-template-sa-3.pdf" \
--lua-filter="../../../../pandoc/filters/linebreaks.lua" \
-o mygov-oidc-dev-guide.pdf mygov-oidc-dev-guide-v1.md

## Core Data Guide
cd /c/Data/workspace/git/citizen-access/architecture/documentation/docs/mygov/design/functions/coredata
pandoc -N \
--pdf-engine=xelatex \
--highlight-style breezedark \
--from=gfm \
--toc \
--toc-depth=3 \
--template eisvogel \
--listing \
--shift-heading-level-by=-1 \
-V listings-no-page-break=true \
-V toc-own-page=true \
-V table-use-row-colors=true \
-V theme=moon \
-V titlepage-rule-color="360049" \
-V header-left="v0.8" \
-V header-center="For Official Use Only" \
-V header-right="\\thetitle" \
-V footer-left="\\thedate" \
-V footer-center="For Official Use Only" \
-V footer-right="Page \\thepage" \
-V titlepage-background="../../../../../pandoc/backgrounds/myGov-corporate-template-sa-3.pdf" \
--lua-filter="../../../../../pandoc/filters/linebreaks.lua" \
-o mgv-sis-coredata.pdf mgv-sis-coredata.md

## Tell Us Once
cd /c/Data/workspace/git/citizen-access/architecture/documentation/docs/mygov/design/functions/tell-us-once
pandoc -N \
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
-V header-left="v2.3" \
-V header-center="For Official Use Only" \
-V header-right="\\thetitle" \
-V footer-left="\\thedate" \
-V footer-center="For Official Use Only" \
-V footer-right="Page \\thepage" \
-V titlepage-background="../../../../../pandoc/backgrounds/myGov-corporate-template-sa-3.pdf" \
--lua-filter="../../../../../pandoc/filters/linebreaks.lua" \
-o mygov-sis-tuo.pdf mygov-sis-tuo.md

## Digital Mail
cd /c/Data/workspace/git/citizen-access/architecture/documentation/docs/mygov/design/functions/digital-mail
pandoc -N \
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
-V header-left="v2.3" \
-V header-center="For Official Use Only" \
-V header-right="\\thetitle" \
-V footer-left="\\thedate" \
-V footer-center="For Official Use Only" \
-V footer-right="Page \\thepage" \
-V titlepage-background="../../../../../pandoc/backgrounds/myGov-corporate-template-sa-3.pdf" \
--lua-filter="../../../../../pandoc/filters/linebreaks.lua" \
-o mygov-sis-digitalmail.pdf mygov-sis-digital.md

## EMB
cd /c/Data/workspace/git/citizen-access/architecture/documentation/docs/mygov/design/functions/emb
pandoc -N \
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
-V header-left="v2.3" \
-V header-center="For Official Use Only" \
-V header-right="\\thetitle" \
-V footer-left="\\thedate" \
-V footer-center="For Official Use Only" \
-V footer-right="Page \\thepage" \
-V titlepage-background="../../../../../pandoc/backgrounds/myGov-corporate-template-sa-3.pdf" \
--lua-filter="../../../../../pandoc/filters/linebreaks.lua" \
-o mygov-emb-design.pdf mygov-emb-design.md

## NAC
cd /c/Data/workspace/git/citizen-access/architecture/documentation/docs/mygov/design/functions/account
pandoc -N \
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
-V header-left="v2.3" \
-V header-center="For Official Use Only" \
-V header-right="\\thetitle" \
-V footer-left="\\thedate" \
-V footer-center="For Official Use Only" \
-V footer-right="Page \\thepage" \
-V titlepage-background="../../../../../pandoc/backgrounds/myGov-corporate-template-sa-3.pdf" \
--lua-filter="../../../../../pandoc/filters/linebreaks.lua" \
-o mgv-sis-nac.pdf mgvsis-nac.md