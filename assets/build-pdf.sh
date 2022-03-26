cp ./assets/toc.xsl ./out/toc.xsl
cd ./out/
mdpath=($(find ../ -name "*.md"))
for mdfile in ${mdpath[@]}; do
  htfile=$(echo $mdfile | basename | sed -e "s|\.md|.html|")
  echo $mdfile
  sudo pandoc --webtex=https://latex.codecogs.com/svg.latex? -s -i $mdfile -t html5 -c ./github.css -c ./wk.css --pdf-engine-opt="toc" --pdf-engine-opt="--toc-header-text" --pdf-engine-opt="目次" --pdf-engine-opt="--xsl-style-sheet" --pdf-engine-opt="./toc.xsl" --pdf-engine=wkhtmltopdf -N -o $htfile
done
cd ../