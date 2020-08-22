#!/bin/sh
set -ex

# # Build instructions
# 1. Set the version number (v=$version) and release name (release=$name)
# 2. Make build script executable `chmod +x build.sh`
# 3. Run `./build.sh`

v=3.6.1
release=monaco

curl -Lo libsass.zip https://github.com/sass/libsass/archive/$v.zip
tar xf libsass.zip
rm libsass.zip

curl -Lo libsass-$v/sassc.zip https://github.com/sass/sassc/archive/$v.zip
tar xf libsass-$v/sassc.zip -C libsass-$v
rm libsass-$v/sassc.zip

(
    cd libsass-3.6.1/sassc-3.6.1
    make
    mv libsass-3.6.1/sassc-3.6.1/bin/sassc $release/sassc
)

rm -rf libsass-$v
