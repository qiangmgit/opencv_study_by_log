#!/bin/bash
SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P)"
ROOT_DIR=$SCRIPT_DIR/..

# build opencv lib, note only rebuild opencv lib when needed
BUILD_OPENCV=true
BUILD_OPENCV_FROM_CLEAN=false
if [[ "$BUILD_OPENCV" == "true" ]]; then
cd $ROOT_DIR/modules/opencv
if [[ "$BUILD_OPENCV_FROM_CLEAN" == "true" ]]; then
rm -rf build
fi
mkdir -p build
cd build
cmake ..
make -j16
fi


# build app
cd $ROOT_DIR
rm -rf build
mkdir build
cd build
cmake ..
make