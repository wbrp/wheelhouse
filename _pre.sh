if [ $# -ne 1 ]; then
    echo "Usage: $0 <git-tag>"
    exit 0
fi

die() { echo "$@" 1>&2 ; exit 1; }

export PIP=VIRTUAL/bin/pip
export PYTHON=VIRTUAL/bin/python
export VERSIONNAME=$NAME-$1

if [ ! -f ${VERSIONNAME}.tar.gz ]; then
    wget $REPO/archive/${1}.tar.gz -O ${VERSIONNAME}.tar.gz || die "Could not download ${1}."
fi

if [ ! -d $VERSIONNAME ]; then
    mkdir $VERSIONNAME
    tar xfz ${VERSIONNAME}.tar.gz -C $VERSIONNAME || die "Could not unpack ${VERSIONNAME}.tar.gz."
fi
cd $VERSIONNAME/$NAME-*/ || die "Could not change into $NAME directory."

if [ ! -d VIRTUAL ]; then
    virtualenv VIRTUAL
fi

$PIP install wheel
