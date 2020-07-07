python3 -m venv venv
source venv/bin/activate
pip install --no-cache-dir -r ./requirements.txt
cp -r ./venv/lib/python3.7/site-packages ./python
find . -type f -name '*.py[co]' -delete -o -type d -name __pycache__ -delete
zip -r py37-lambda-layer.zip ./python