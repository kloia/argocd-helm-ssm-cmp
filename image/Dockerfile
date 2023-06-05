FROM debian:11.7-slim

# Install Helm Repo
RUN curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
RUN sudo apt-get install apt-transport-https --yes
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
RUN sudo apt-get update

# TODO: install
RUN sudo apt-get install helm
RUN sudo apt-get install jq

# Install Helm SSM Plugin
RUN helm plugin install --version "3.3.0"

WORKDIR /home/argocd/cmp-server/config/
COPY plugin.yaml ./
COPY scripts/ ./scripts