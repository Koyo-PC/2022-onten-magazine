cp ./assets/github.css ./out/github.css
cp ./assets/wk.css ./out/wk.css
cd ./out/
sudo pandoc --webtex=https://latex.codecogs.com/svg.latex? -s *.md -t html5 -c ./github.css -c ./wk.css -N -o ./output.html
cd ../