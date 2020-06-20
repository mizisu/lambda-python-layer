FROM lambci/lambda:build-python3.7
RUN mkdir build
WORKDIR build
COPY requirements.txt requirements.txt
RUN pip install -r ./requirements.txt
RUN cp -r /var/lang/lib/python3.7/site-packages ./python
RUN zip -r py37-lambda-layer.zip ./python
