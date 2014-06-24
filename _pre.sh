if [ $# -ne 1 ]; then
    echo "Usage: $0 <version>"
    exit 0
fi

die() { echo "$@" 1>&2 ; exit 1; }

export PIP=VIRTUAL/bin/pip
export PYTHON=VIRTUAL/bin/python

if [ ! -f v${1}.tar.gz ]; then
    wget $REPO/archive/v${1}.tar.gz || die "Could not download ${1}."
fi

if [ ! -d $NAME-${1} ]; then
    tar xfz v${1}.tar.gz
fi
cd $NAME-${1}

virtualenv VIRTUAL

$PIP install wheel
