# proj1
## Install things
# Docker on source and target host
<pre>
wget -O - https://get.docker.com | bash -
</pre>
# Install make on source
<pre>
sudo apt install make
</pre>
# Add user to docker groups on both hosts
<pre>
sudo adduser user docker
</pre>
## Gen keys
<pre>
ssh-keygen
ssh-copy-id user@remote-ip-addr
</pre>
## Pull docker image
<pre>
docker pull nginx:1.17
</pre>
### Copy files on docker host
## Operation
Working dir /home/user/proj1
1. make sync - download bugs.html and appropriate languages
2. make build - build docker image with nginx (using Dockerfile which is perform copy bugs.html to image) and save it as tar.
3. make deploy - copy docker image to target server, kill all running containters by executing remote script, import and run updated image

Script start.sh execute by cron every Saturday at 3:45
Logs located in /home/user/proj1/logs

