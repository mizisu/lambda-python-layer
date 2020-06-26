FROM lambci/lambda:build-python3.7
RUN mkdir build
WORKDIR build
COPY requirements.txt requirements.txt
COPY entrypoint.sh entrypoint.sh
RUN chmod 755 entrypoint.sh
ENTRYPOINT ["sh", "entrypoint.sh"]