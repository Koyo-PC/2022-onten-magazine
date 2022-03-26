cp ./assets/github.css ./out/github.css
cp ./assets/wk.css ./out/wk.css
cp ./assets/toc.xsl ./out/toc.xsl
mkdir ./out/Assets
assets=($(find ./ -name "Assets" -type d))
for assetfolder in ${assets[@]}; do
  cp -r $assetfolder ./out/
done
cd ./out/
mdpath=($(find ../ -name "*.md"))
for mdfile in ${mdpath[@]}; do
  htfile=$(basename $(echo $mdfile | sed -e "s|\.md|.pdf|"))
  echo $mdfile
  sudo pandoc --webtex='https://latex.codecogs.com/svg.latex?' -s -i $mdfile -t html5 -c ./github.css -c ./wk.css --self-contained --pdf-engine-opt="toc" --pdf-engine-opt="--toc-header-text" --pdf-engine-opt="目次" --pdf-engine-opt="--xsl-style-sheet" --pdf-engine-opt="./toc.xsl" --pdf-engine=wkhtmltopdf -N -o $htfile
done
cd ../