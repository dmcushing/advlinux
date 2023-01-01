# Base
FROM ubuntu:jammy

# Prep
RUN apt update
RUN apt -y install git
RUN git clone https://github.com/dmcushing/advlinux.git /advlinux/
RUN ln -s /advlinux/scripts /scripts
RUN chmod 755 /scripts/*.sh
