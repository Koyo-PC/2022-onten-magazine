git clone git://gitorious.org/+wkhtml2pdf/qt/wkhtmltopdf-qt.git ./temp/wkhtmltopdf-qt
cd ./temp/wkhtmltopdf-qt
./configure -nomake tools,examples,demos,docs,translations -opensource -prefix ../wkqt
make -j3
make install
cd ../../