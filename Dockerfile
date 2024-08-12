FROM golang

WORKDIR /go/src

COPY . /go/src

RUN mkdir -p /root/.ssh

COPY id_rsa_test_ssh_ocf /root/.ssh/id_rsa

EXPOSE 5555
CMD ["go","run","main.go"]