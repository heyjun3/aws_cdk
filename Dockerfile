FROM node:18

WORKDIR /cdk
RUN npm install --g npm
RUN npm install -g aws-cdk
RUN apt update -y && apt upgrade -y
RUN apt install curl unzip -y
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install