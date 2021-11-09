FROM golang:1.16-stretch

ENV SERVERLESS serverless@2.64.1
ENV GOPATH /go
ENV PATH $GOPATH/bin:/root/.yarn/bin:$PATH

RUN mkdir /.cache && \
    mkdir /.cache/go-build
RUN apt update && \
    apt install git
# 依存エラー: but was required as: github.com/Sirupsen/logrus
# RUN go get -u github.com/rancher/trash
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt install -y nodejs
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN npm install -g ${SERVERLESS}