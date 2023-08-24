doctree report.yml project_report.tex
pdflatex project_report.tex
rm project_report.toc
rm project_report.log
rm project_report.aux
mv project_report.tex ../docs/report
mv project_report.pdf ../docs/report
