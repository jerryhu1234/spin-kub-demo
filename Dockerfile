FROM golang

RUN echo 'build dev staging'

ADD . /go/src/github.com/lwander/k8s-demo

RUN go install github.com/lwander/k8s-demo

ADD ./content /content

ENTRYPOINT /go/bin/k8s-demo
