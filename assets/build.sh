mkdir ./out
sudo pandoc -s *.md -t html5 -c ./assets/github.css -c ./assets/wk.css --pdf-engine-opt="toc" --pdf-engine-opt="--toc-header-text" --pdf-engine-opt="目次" --pdf-engine-opt="--xsl-style-sheet" --pdf-engine-opt="./assets/toc.xsl" --pdf-engine=wkhtmltopdf -N -o ./out/output.pdf
