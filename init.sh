#!/usr/bin/env bash

# Init file which creates the enviroment needed in order to use cmake and cpp
# custom code in your project

# windows/linux/osx
platform=linux

# Cloning needed submodules
git submodule add https://github.com/GodotNativeTools/godot_headers
git submodule add https://github.com/GodotNativeTools/godot-cpp
cd src/godot-cpp

# Generate project files
godot --gdnative-generate-json-api godot_api.json

# Compiles the cpp support
scons platform=$platform headers_dir=../godot_headers generate_bindings=yes target=release


