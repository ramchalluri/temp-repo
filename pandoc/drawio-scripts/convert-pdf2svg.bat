@echo off
REM Set the directory containing PDF files
set "pdf_dir=%cd%"

REM Loop through each PDF file in the directory
for %%f in (*.pdf) do (
    REM Extract the file name without extension
    set "file_name=%%~nf"
    REM Convert PDF to SVG using Inkscape
    echo converting "%%f"
    inkscape "%%f" --pdf-poppler --export-text-to-path --export-plain-svg --pages=1 --export-filename "%pdf_dir%\%%~nf.svg"
)

echo Conversion complete!
