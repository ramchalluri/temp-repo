#!/bin/bash

for file in *.pdf
do
  inkscape "$file" --pdf-poppler --export-text-to-path --export-plain-svg --export-filename "${file%.pdf}.svg"
done

# inkscape in.pdf --pdf-poppler --export-text-to-path --export-plain-svg --export-filename out.svg