FROM circleci/node:7.10
RUN sudo apt-get update
RUN sudo apt install python-pip python-dev && \
sudo pip install awscli && \
sudo curl -LO https://github.com/kubernetes/kops/releases/download/1.9.1/kops-linux-amd64 && \
sudo chmod +x kops-linux-amd64 && \
sudo mv kops-linux-amd64 /usr/local/bin/kops && \
sudo apt-get update && \
sudo apt-get install -y apt-transport-https && \
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - && \
sudo touch /etc/apt/sources.list.d/kubernetes.list  && \
echo 'deb http://apt.kubernetes.io/ kubernetes-xenial main' | sudo tee -a /etc/apt/sources.list.d/kubernetes.list && \
sudo apt-get update && sudo apt-get install -y kubectl
