#!/bin/bash
export NAME=scikit-learn
export REPO=https://github.com/scikit-learn/scikit-learn
export CWD=$(pwd)
source $CWD/_pre.sh
$PIP install $CWD/numpy-1.8.1-cp27-none-linux_x86_64.whl
sed -i "s/'bdist_rpm'/'bdist_rpm', 'bdist_wheel'/" setup.py
source $CWD/_post.sh
