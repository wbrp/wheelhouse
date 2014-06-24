$PYTHON setup.py bdist_wheel || die "Could not build wheel."
cp dist/*.whl ../..
