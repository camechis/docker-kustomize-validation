FROM python:3.11.0a1-slim-bullseye
RUN pip install kubernetes-validate
RUN apt-get update && \
    apt-get -y install wget && \
    apt-get clean && \
    wget https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv4.4.0/kustomize_v4.4.0_linux_amd64.tar.gz && \
    tar xvfz kustomize_v4.4.0_linux_amd64.tar.gz && \
    mv kustomize /usr/bin && \
    rm -rf kustomize_v4.4.0_darwin_amd64.tar.gz