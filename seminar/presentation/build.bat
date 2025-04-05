@echo off
set FILE=%1.tex
if not exist %FILE% (
    echo No file named %1.tex! QUITTING!
    exit /b 1
)
echo Deleting auxiliary files...
del /f /q %1.aux %1.bbl %1.bcf %1.blg %1.lof %1.log %1.lol %1.lot %1.out %1.pdf %1.run.xml %1.toc
echo Deletion complete

pdflatex %1.tex
biber %1
pdflatex %1.tex
pdflatex %1.tex
