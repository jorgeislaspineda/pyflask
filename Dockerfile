FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
ADD . /pyflask
WORKDIR /pyflask
RUN  pip install -r requirements.txt 
ENTRYPOINT ["python"]
CMD ["hm-docker.py"]