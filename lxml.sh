#!/bin/bash
export NAME=lxml
export REPO=https://github.com/lxml/lxml
export CWD=$(pwd)
source $CWD/_pre.sh
$PIP install $CWD/Cython-0.20.2-cp27-none-linux_x86_64.whl
source $CWD/_post.sh
