#!/bin/bash
export NAME=scipy
export REPO=https://github.com/scipy/scipy
export CWD=$(pwd)
source $CWD/_pre.sh
$PIP install $CWD/Cython-0.20.2-cp27-none-linux_x86_64.whl
$PIP install $CWD/numpy-1.8.1-cp27-none-linux_x86_64.whl
source $CWD/_post.sh
