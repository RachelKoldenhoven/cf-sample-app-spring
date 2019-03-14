FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y wget sudo gnupg && \
    wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo apt-key add - && \
    echo "deb https://packages.cloudfoundry.org/debian stable main" | sudo tee /etc/apt/sources.list.d/cloudfoundry-cli.list && \
    sudo apt-get update && \
    sudo apt-get install cf-cli