FROM debian:latest

# Install Dependancies
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y apt-utils
RUN apt-get install -y vim
RUN apt-get install -y man
RUN apt-get install -y git
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN apt-get install -y build-essential
RUN apt-get install -y software-properties-common
RUN apt-get install -y python
RUN apt-get install -y python-setuptools 
RUN apt-get install -y python-pip

# Add files to container
ADD ./.bashrc /etc/bash.bashrc

# Setup Working directory
WORKDIR /Documents

# Define default command
CMD ["/bin/bash"]
