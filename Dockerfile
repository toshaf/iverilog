FROM ubuntu
RUN apt-get update --fix-missing
RUN apt-get install -y software-properties-common
RUN apt-get install -y make
RUN apt-get install -y iverilog
