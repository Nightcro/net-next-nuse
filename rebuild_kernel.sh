#!/bin/bash

SCRIPT_PATH=$(dirname "$(realpath -s "$0")")

make defconfig ARCH=lib
make library ARCH=lib

cp $SCRIPT_PATH/arch/lib/tools/libsim-linux-4.1.0.so $SCRIPT_PATH/../../build/bin_dce/libsim-linux-4.1.0.so
cd $SCRIPT_PATH/../../build/bin_dce
ln -s -f libsim-linux-4.1.0.so liblinux.so