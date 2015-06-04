FROM dockerregistry.protorz.net/ubuntu:latest


RUN apt-get update && \
    apt-get install -y build-essential curl samba && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["", ""]
