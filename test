FROM ubuntu:latest
LABEL maintainer="sevendollar@gmail.com"
WORKDIR /terraform
RUN apt-get update && \
    apt-get install -y unzip wget && \
    wget https://releases.hashicorp.com/terraform/0.9.11/terraform_0.9.11_linux_amd64.zip?_ga=2.95965916.115305710.1501031157-510355381.1497248072 && \
    unzip terraform_0.9.11_linux_amd64.zip\?_ga\=2.95965916.115305710.1501031157-510355381.1497248072 && \
    mv terraform /usr/local/bin/ && \
    rm terraform* && \
    rm -rf /var/lib/apt/lists/*
CMD ["terraform"]
