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
1.
2.
3.
4.
