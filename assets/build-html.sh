sudo pandoc --webtex=https://latex.codecogs.com/svg.latex? -s *.md -t html5 -c ./assets/github.css -c ./assets/wk.css -N -o ./out/output.html