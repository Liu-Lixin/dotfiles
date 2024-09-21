FROM ubuntu:latest
RUN apt-get update && apt-get install -y git bash && rm -rf /var/lib/apt/lists/*
RUN useradd -m testuser
USER testuser
WORKDIR /home/testuser
COPY bootstrap.sh .
CMD ["/bin/bash"]