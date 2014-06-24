#!/bin/bash
export NAME=numpy
export REPO=https://github.com/numpy/numpy
export CWD=$(pwd)
source $CWD/_pre.sh
$PIP install $CWD/Cython-0.20.2-cp27-none-linux_x86_64.whl
source $CWD/_post.sh
