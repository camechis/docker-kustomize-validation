FROM clojure:openjdk-11-tools-deps-buster
RUN apt-get update && \
    apt-get -y install wget python3-pip && \
    apt-get clean && \
    pip3 install kubernetes-validate && \
    wget https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv4.4.0/kustomize_v4.4.0_linux_amd64.tar.gz && \
    tar xvfz kustomize_v4.4.0_linux_amd64.tar.gz && \
    mv kustomize /usr/bin && \
    rm -rf kustomize_v4.4.0_darwin_amd64.tar.gz