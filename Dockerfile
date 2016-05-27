FROM quay.io/experimentalplatform/ubuntu:latest


RUN apt-get update && \
    apt-get install -y build-essential curl samba && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD smb.conf /etc/samba/smb.conf

CMD ["dumb-init", "/usr/sbin/nmbd", "-F", "-S"]

