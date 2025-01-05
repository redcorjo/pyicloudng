
#!/bin/bash
# Generated using pyarchetype template
# pip install pyarchetype
# git clone https://github.com/redcorjo/pyarchetype.git

BASE_DIR=$(dirname $0)/..
TWINE_CONFIG=$(dirname $0)/../.pypirc
PYTHON=python3.9
PACKAGE=app

cd ${BASE_DIR}

echo "Cleanup old dist files"
test -e ${BASE_DIR}/dist/*.whl && rm ${BASE_DIR}/dist/* 

if ! test -e ${BASE_DIR}/.venv/bin/activate
then
    echo "Creating default virtual environment"
    ${PYTHON} -m venv .venv
    echo "Enable virtual environment"
    source ${BASE_DIR}/.venv/bin/activate
    python -m pip install --upgrade pip build twine
else
    echo "Enable virtual environment"
    source ${BASE_DIR}/.venv/bin/activate
fi

python -m build 2>/dev/null >/dev/null || python -m pip install --upgrade pip build

echo "Build"
python -m build

echo Reinstall module
python -m pip install --upgrade --force-reinstall dist/${PACKAGE}*whl

#echo Run tests
#python tests/test_app.py

#app -h

exit