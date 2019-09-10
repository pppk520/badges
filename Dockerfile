FROM python:3.5

# python environment
RUN pip install pip==9.0.1

# dependencies
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

# install vim
RUN apt-get update
RUN apt-get install -y vim

COPY .vimrc /root
COPY .bashrc /root

CMD ["/bin/bash"]