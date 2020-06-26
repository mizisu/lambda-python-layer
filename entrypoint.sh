python3 -m venv venv
source venv/bin/activate
pip install -r ./requirements.txt
cp -r ./venv/lib/python3.7/site-packages ./python
zip -r py37-lambda-layer.zip ./python