git clone git://github.com/antialize/wkhtmltopdf.git ./temp/wkhtmltopdf
cd ./temp/wkhtmltopdf
../wkqt/bin/qmake
make -j3
make install