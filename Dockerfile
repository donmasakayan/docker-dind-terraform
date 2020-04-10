# Base Image - Postgres
FROM docker:19.03.8-dind

# Install terraform
RUN apk add wget unzip

RUN wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
RUN unzip terraform_0.12.24_linux_amd64.zip
RUN mv terraform /usr/local/bin/terraform

RUN terraform version