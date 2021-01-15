from python:3.6-alpine

workdir /work
run apk add --no-cache git make
run git clone --depth 2 https://github.com/woodrush/py2hy.git
workdir /work/py2hy
run git checkout 58b708aa4dc5c522b3dadf6121bb555ffdc43f95
run pip install coveralls==1.1 pytest==3.2.1
# hack to install deps correctly; optional
run pip install hy==0.13.1
run pip install -r requirements.txt
run pip install -e .
run coverage run --source=py2hy setup.py test
