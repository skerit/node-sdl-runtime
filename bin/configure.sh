#!/bin/bash

ROOT=$(cd "$(dirname "$(readlink -f "$0")")/../"; pwd);

cd $ROOT;

sudo rm -rf ./node_modules;
npm install;


cd node_modules/ffi;
node-gyp rebuild;


cd $ROOT;

