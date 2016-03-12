#!/bin/bash

ROOT=$(cd "$(dirname "$(readlink -f "$0")")/../"; pwd);

cd $ROOT;

sudo rm -rf ./node_modules;
npm install;


cd node_modules/ffi;
node-gyp rebuild;


#
#
# Major cleanup, because, you know, NPM sucks hard.
#
#


cd $ROOT;


rm node_modules/array-index/component.json;
rm node_modules/array-index/test.js;
rm node_modules/array-index/README.md;
rm node_modules/array-index/History.md;
rm node_modules/array-index/Makefile;
rm node_modules/array-index/.jshintrc;
rm node_modules/array-index/.npmignore;
rm node_modules/array-index/.travis.yml;
echo "{\"main\":\"./index.js\"}" > node_modules/array-index/package.json;


rm node_modules/bindings/README.md;
echo "{\"main\":\"./bindings.js\"}" > node_modules/bindings/package.json;


rm node_modules/debug/bower.json;
rm node_modules/debug/browser.js;
rm node_modules/debug/component.json;
rm node_modules/debug/History.md;
rm node_modules/debug/Makefile;
rm node_modules/debug/Readme.md;
rm node_modules/debug/.jshintrc;
rm node_modules/debug/.npmignore;
echo "{\"main\":\"./node.js\"}" > node_modules/debug/package.json;


rm -rf node_modules/ffi/deps;
rm -rf node_modules/ffi/doc;
rm -rf node_modules/ffi/example;
rm -rf node_modules/ffi/src;
rm -rf node_modules/ffi/test;
rm -rf node_modules/ffi/build/deps;
rm node_modules/ffi/build/binding.Makefile;
rm node_modules/ffi/build/config.gypi;
rm node_modules/ffi/build/ffi_bindings.target.mk;
rm node_modules/ffi/build/Makefile;
rm node_modules/ffi/appveyor.yml;
rm node_modules/ffi/binding.gyp;
rm node_modules/ffi/History.md;
rm node_modules/ffi/LICENSE;
rm node_modules/ffi/README.md;
rm node_modules/ffi/.jshintrc;
rm node_modules/ffi/.npmignore;
rm node_modules/ffi/.travis.yml;
echo "{\"main\":\"./lib/ffi.js\"}" > node_modules/ffi/package.json;


rm -rf node_modules/iconv/deps;
rm -rf node_modules/iconv/src;
rm -rf node_modules/iconv/support;
rm -rf node_modules/iconv/test;
rm -rf node_modules/iconv/node_modules;
rm node_modules/iconv/build/binding.Makefile;
rm node_modules/iconv/build/config.gypi;
rm node_modules/iconv/build/iconv.target.mk;
rm node_modules/iconv/build/libiconv.target.mk;
rm node_modules/iconv/build/Makefile;
rm node_modules/iconv/binding.gyp;
rm node_modules/iconv/README.md;
rm node_modules/iconv/LICENSE;
rm node_modules/iconv/.npmignore;
echo "{\"main\":\"./lib/iconv.js\"}" > node_modules/iconv/package.json;


rm node_modules/ms/History.md;
rm node_modules/ms/LICENSE;
rm node_modules/ms/README.md;
rm node_modules/ms/.npmignore;
echo "{\"main\":\"./index.js\"}" > node_modules/ms/package.json;


rm -rf node_modules/nan;
# XXX: nan seems to be not used anymore after node-gyp rebuild
# rm -rf node_modules/nan/doc;
# rm node_modules/nan/tools/README.md;
# rm node_modules/nan/appveyor.yml;
# rm node_modules/nan/CHANGELOG.md;
# rm node_modules/nan/LICENSE.md;
# rm node_modules/nan/README.md;
# echo "{\"main\": \"./include_dirs.js\" }" > node_modules/nan/package.json;
# echo "{\"main\": \"./1to2.js\" }" > node_modules/nan/tools/package.json;


rm -rf node_modules/ref/docs;
rm -rf node_modules/ref/src;
rm -rf node_modules/ref/test;
rm node_modules/ref/build/binding.Makefile;
rm node_modules/ref/build/binding.target.mk;
rm node_modules/ref/build/config.gypi;
rm node_modules/ref/build/Makefile;
rm node_modules/ref/appveyor.yml;
rm node_modules/ref/binding.gyp;
rm node_modules/ref/History.md;
rm node_modules/ref/README.md;
rm node_modules/ref/.npmignore;
rm node_modules/ref/.travis.yml;
echo "{\"main\":\"./lib/ref.js\"}" > node_modules/ref/package.json;


rm -rf node_modules/ref-array/test;
rm node_modules/ref-array/appveyor.yml;
rm node_modules/ref-array/README.md;
rm node_modules/ref-array/History.md;
rm node_modules/ref-array/.npmignore;
rm node_modules/ref-array/.travis.yml;
echo "{\"main\":\"./lib/array.js\"}" > node_modules/ref-array/package.json;


rm node_modules/ref-struct/appveyor.yml;
rm node_modules/ref-struct/History.md;
rm node_modules/ref-struct/README.md;
rm node_modules/ref-struct/.jshintrc;
rm node_modules/ref-struct/.npmignore;
rm node_modules/ref-struct/.travis.yml;
echo "{\"main\":\"./lib/struct.js\"}" > node_modules/ref-struct/package.json;


rm -rf node_modules/ref-union/test;
rm node_modules/ref-union/appveyor.yml;
rm node_modules/ref-union/History.md;
rm node_modules/ref-union/README.md;
rm node_modules/ref-union/.npmignore;
rm node_modules/ref-union/.travis.yml;
echo "{\"main\":\"./lib/union.js\"}" > node_modules/ref-union/package.json;


rm -rf node_modules/ref-wchar/test;
rm node_modules/ref-wchar/appveyor.yml;
rm node_modules/ref-wchar/History.md;
rm node_modules/ref-wchar/README.md;
rm node_modules/ref-wchar/.jshintrc;
rm node_modules/ref-wchar/.npmignore;
rm node_modules/ref-wchar/.travis.yml;
echo "{\"main\":\"./index.js\"}" > node_modules/ref-wchar/package.json;

