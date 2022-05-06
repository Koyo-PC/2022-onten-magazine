cd out
wget https://gist.githubusercontent.com/jepio/3ecaa6bba2a53ff74f2e/raw/6d1af4c74085c3d3f8995c4f9396bb5eaf278b82/minted.py
# pandoc pandoc -s --filter ./minted.py ../**/*.md -o output.tex -f markdown -t latex -V documentclass=bxjsarticle -V classoption=pandoc
pandoc -s ../**/*.md -o output.tex -f markdown -t latex -V documentclass=bxjsarticle -V classoption=pandoc
lualatex output.tex

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
