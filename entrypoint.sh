python3 -m venv venv
source venv/bin/activate
RUN pip install -r ./requirements.txt
RUN cp -r ./venv/lib/python3.7/site-packages ./python
RUN zip -r py37-lambda-layer.zip ./python
