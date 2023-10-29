# Pull base image.
FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \
# Install Unzip
apt-get install unzip -y && \
# need wget
apt-get install wget curl -y && \
# vim
apt-get install vim -y

################################
# Install Terraform
################################

# Download terraform for linux
RUN wget https://releases.hashicorp.com/terraform/1.5.3/terraform_1.5.3_linux_amd64.zip

# Unzip
RUN unzip terraform_1.5.3_linux_amd64.zip

# Move to local bin
RUN mv terraform /usr/local/bin/
# Check that it's installed
RUN terraform --version

################################
# Install python
################################

RUN apt-get install -y python3-pip
#RUN ln -s /usr/bin/python3 python
RUN pip3 install --upgrade pip
RUN python3 -V
RUN pip --version

################################
# Install Terraform docs
################################
RUN wget https://terraform-docs.io/dl/v0.16.0/terraform-docs-v0.16.0-$(uname)-amd64.tar.gz -O terraform-docs.tar.gz
RUN tar -xzf terraform-docs.tar.gz
RUN chmod +x terraform-docs
RUN mv terraform-docs /usr/local/bin/terraform-docs
RUN terraform-docs --version

################################
# Install git
################################
RUN apt install -y git

################################
# Install j2 lib
################################
RUN pip install j2cli

################################
# Install Kubectl
################################
RUN curl -L "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

################################
# Install tfsec
################################
RUN curl -s https://raw.githubusercontent.com/aquasecurity/tfsec/master/scripts/install_linux.sh | bash

################################
# Install dev dependencies
################################
RUN apt install -y jq

################################
# Install terragrunt
################################
RUN curl -L  https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.6/terragrunt_linux_386 -o /usr/local/bin/terragrunt
RUN chmod u+x /usr/local/bin/terragrunt

################################
# Install tflint
################################
RUN curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash

################################
# Install Google cloud cli
################################
RUN apt-get install apt-transport-https ca-certificates gnupg curl -y
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN apt-get update && apt-get install google-cloud-cli

################################
# Install Ansible
################################
RUN pip3 install ansible
# Configuring argcomplete
RUN pip3 install argcomplete
RUN activate-global-python-argcomplete
# Install gcp plugins
RUN pip3 install google-auth pywinrm requests