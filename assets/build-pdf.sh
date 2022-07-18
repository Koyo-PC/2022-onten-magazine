cd out

### Minted

# sudo apt install -y python3-pip
# pip install pygments
# pip install pandocfilters
# wget https://raw.githubusercontent.com/nick-ulle/pandoc-minted/master/pandoc-minted.py
# pandoc -s --filter ./pandoc-minted.py ../**/**/*.md -o output.tex -f markdown -t latex --pdf-engine lualatex --pdf-engine-opt=--shell-escape --pdf-engine-opt="-aux-directory=temp" -V documentclass=bxjsarticle -V classoption=pandoc -H ../assets/header.tex -o output.pdf

pandoc -s ../**/**/*.md -o output.tex -f markdown -t latex --pdf-engine lualatex -V documentclass=bxjsarticle -V classoption=pandoc -H ../assets/header.tex -o output.pdf

#cp ./assets/github.css ./out/github.css
#cp ./assets/wk.css ./out/wk.css
#cp ./assets/dynoload.js ./out/dynoload.js
#cp ./assets/toc.xsl ./out/toc.xsl
#mkdir ./out/Assets
#assets=($(find ./ -name "Assets" -type d))
#for assetfolder in ${assets[@]}; do
#  cp -r $assetfolder ./out/
#done
#cd ./out/
#mdpath=($(find ../ -name "*.md"))
#for mdfile in ${mdpath[@]}; do
#  htfile=$(basename $(echo $mdfile | sed -e "s|\.md|.pdf|"))
#  echo $mdfile
#  sudo pandoc --webtex='https://latex.codecogs.com/svg.latex?' -s -i $mdfile -t html5 -c ./github.css -c ./wk.css --self-contained --pdf-engine-opt="toc" --pdf-engine-opt="--toc-header-text" --pdf-engine-opt="目次" --pdf-engine-opt="--xsl-style-sheet" --pdf-engine-opt="./toc.xsl" --pdf-engine=wkhtmltopdf -N -o $htfile
#done
#cd ../
