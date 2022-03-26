cp ./assets/github.css ./out/github.css
cp ./assets/wk.css ./out/wk.css
cd ./out/
mdpath=($(find ../ -name "*.md"))
for mdfile in ${mdpath[@]}; do
  htfile=$(basename $(echo $mdfile | sed -e "s|\.md|.html|"))
  echo $mdfile
  sudo pandoc --webtex='https://latex.codecogs.com/svg.latex?' -s -i $mdfile -t html5 -c ./github.css -c ./wk.css --serlf-contained -N -o $htfile
done
cd ../