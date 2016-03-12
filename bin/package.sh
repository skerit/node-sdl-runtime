#!/bin/bash

lowercase() {
	echo "$1" | sed "y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/";
}

OS=`lowercase \`uname\``;
ARCH=`lowercase \`uname -m\``;

LYCHEEJS_ROOT="/opt/lycheejs-edge";
RUNTIME_ROOT=$(cd "$(dirname "$(readlink -f "$0")")/../"; pwd);


if [ "$ARCH" == "x86_64" -o "$ARCH" == "amd64" ]; then
	ARCH="x86_64";
fi;

if [ "$ARCH" == "i386" -o "$ARCH" == "i686" -o "$ARCH" == "i686-64" ]; then
	ARCH="x86";
fi;

if [ "$ARCH" == "armv7l" -o "$ARCH" == "armv8" ]; then
	ARCH="arm";
fi;


if [ "$OS" == "darwin" ]; then

	OS="osx";
	LYCHEEJS_NODE="$LYCHEEJS_ROOT/bin/runtime/node/osx/$ARCH/node";

elif [ "$OS" == "linux" ]; then

	OS="linux";
	LYCHEEJS_NODE="$LYCHEEJS_ROOT/bin/runtime/node/linux/$ARCH/node";

fi;

if [ ! -f $LYCHEEJS_NODE ]; then
	echo "Sorry, your computer is not supported. ($OS / $ARCH)";
	exit 1;
fi;



echo "PACKAGE node-sdl ...";

cd $RUNTIME_ROOT;


if [ -d dist ]; then
	rm -rf dist;
fi;


mkdir -p "dist/$OS/$ARCH";

NODE_BIN=$(basename "$LYCHEEJS_NODE");
NODE_DIR=$(dirname "$LYCHEEJS_NODE");
cp "$LYCHEEJS_NODE" "dist/$OS/$ARCH/$NODE_BIN";
cp "$NODE_DIR/init.sh" "dist/$OS/$ARCH/init.sh";

cp -R node_modules "dist/$OS/$ARCH/node_modules";
cp -R src          "dist/$OS/$ARCH/node_modules/sdl";


