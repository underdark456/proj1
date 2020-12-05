# proj1
## Main
### Install docker on both hosts
<pre>
wget -O - https://get.docker.com | bash -
</pre>
Also install make on server
<pre>
sudo apt install make
</pre>
Add user to group in both hosts
<pre>
sudo adduser user docker
</pre>
### Gen keys
<pre>
ssh-keygen
ssh-copy-id user@remote-ip-addr
</pre>
### Pull docker image
<pre>
docker pull nginx:1.17
</pre>
### Copy files on docker host
## Operation
1.
2.
3.
4.
