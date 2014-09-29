FROM graybullet/jenkins-slave-base
MAINTAINER Tomo Masakura <tomo.masakura@gmail.com>

# Install packages and change locale.
RUN echo 'Acquire::http::proxy "http://192.168.0.9:3142/";' > /etc/apt/apt.conf.d/30proxy && apt-get update && apt-get install -y software-properties-common && add-apt-repository ppa:chris-lea/node.js && apt-get update && apt-get install -y nodejs git && rm -rf /var/lib/apt/lists /var/cache/apt /etc/apt/apt.conf.d/30proxy

# Install npm modules.
RUN npm update -g && npm install -g yo bower grunt-cli jsdoc jshint jscs phantomjs editorconfig && rm -rf $HOME/.npm

RUN mkdir -p /home/buildagent/.config/configstore
ADD insight-yo.yml /home/buildagent/.config/configstore/
ADD insight-bower.yml /home/buildagent/.config/configstore/
RUN chown -R buildagent:buildagent /home/buildagent/.config

