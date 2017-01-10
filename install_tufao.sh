#!/bin/sh
#
# Downloads Tufao, makes some adjustments, then compiles it.
#
# 'sudo cp -av tufao/src/libtufao1* /usr/lib' to copy .so-files to a sane place

git clone https://github.com/vinipsmaker/tufao
git clone https://github.com/BoostGSoC14/boost.http tufao/3rd/boost.http

# Change directories as needed.. glgl
export Qt5Core_DIR='/mnt/usb/qt-everywhere-opensource-src-5.7.1/qtbase/lib/cmake/Qt5Core/'
export Qt5Network_DIR='/mnt/usb/qt-everywhere-opensource-src-5.7.1/qtbase/lib/cmake/Qt5Network/'

find tufao/3rd/ -type f -exec sed -i 's=core/scoped_enum.hpp=detail/scoped_enum_emulation.hpp=g' {} +
cd tufao
cmake .
make -j4
