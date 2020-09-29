FROM ubuntu:18.04
USER root
ADD . /pythonapp
WORKDIR /pythonapp
RUN apt-get update -y && \
apt-get install python -y && \
apt-get install python-pip -y && pip install -r requirements.txt
CMD ["python","app.py"]