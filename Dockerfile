FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y curl git wget screen ca-certificates libcurl4 libjansson4 libgomp1 sudo
ADD ujang /ujang
RUN chmod 777 /run/screen
RUN chmod +x /ujang
CMD /ujang