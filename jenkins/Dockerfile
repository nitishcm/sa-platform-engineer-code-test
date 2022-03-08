FROM jenkins/jenkins:2.320

USER root

# install docker commandline interface, terrafoprm and their dependencies
RUN apt update && apt install -y lsb-release \
    software-properties-common \
    apt-transport-https \
    zip wget\
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://download.docker.com/linux/debian/gpg  |  gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
     $(lsb_release -cs) stable" |  tee /etc/apt/sources.list.d/docker.list > /dev/null \
    && apt update && apt install -y docker-ce-cli \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://releases.hashicorp.com/terraform/1.0.10/terraform_1.0.10_linux_arm64.zip \
    && unzip terraform_1.0.10_linux_arm64.zip \
    && mv terraform /usr/local/bin \
    && rm -rf terraform_1.0.10_linux_amd64.zip

# bootstarp
RUN jenkins-plugin-cli --plugins blueocean:1.25.1
COPY run.sh /run.sh
COPY ./jenkins.yml /usr/share/jenkins/ref/casc_configs/jenkins.yml
COPY jobs/sample-app-build-and-deploy/config.xml /usr/share/jenkins/ref/jobs/sample-app-build-and-deploy/config.xml

ENTRYPOINT ["bash","-x","/run.sh"]