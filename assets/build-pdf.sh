cd `dirname $0`
cd ../
mkdir out
cp ./assets/dummy.pdf ./out/out.pdf
for f in `cat files.txt`
do
mkdir tmp
cp $f ./tmp/markdown.md
cp `dirname $f`/Assets ./tmp/Assets
cd tmp
cat markdown.md | md-to-pdf --md-file-encoding utf-8 --css https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/2.10.0/github-markdown.min.css --body-class markdown-body > out.pdf
cd ../
pdfunite ./out/out.pdf ./tmp/out.pdf ./out/out_marged.pdf
rm ./out/out.pdf
mv ./out/out_marged.pdf ./out/out.pdf
rm -r ./tmp
done