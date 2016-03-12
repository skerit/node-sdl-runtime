
# node-sdl-runtime


Worry no more, all your problems are solved soon.
This is the upcoming SDL runtime based on Node.js.

This runtime uses the FFI (foreign function interface) to use the
shared library of libSDL to give you REAL NATIVE acceleration in
the JavaScript context. So it's pretty damn awesome.



# Installation

Requirements are all using the node ecosystem, so you need node-gyp
in order to rebuild all the native modules. The sdl bindings
themselves are based

```bash
# Make sure you have installed the latest node-gyp
sudo npm install -g node-gyp;


cd /path/to/node-sdl-runtime;

# Install all dependencies
./bin/configure.sh;

# Package all binary runtimes;
./bin/package.sh;
```

