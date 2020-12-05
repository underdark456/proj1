sync:
        cd ~user/proj1/site
        wget -r -e robots=off -l 1 -nd -A 'bugs*.html' https://www.chiark.greenend.org.uk/~sgtatham/bugs.html
build:
        cd ~user/proj1
        docker image rm proj1
        docker build -t proj1
        docker save -o proj1.tar proj1
deploy:
        scp ~user/proj1.tar user@remoteip:~user/proj1
        -ssh root@$$ip "docker kill project1-container"
        -ssh root@$$ip "docker container rm project1-container"
        -ssh root@$$ip "docker image rm project1"
        -ssh root@$$ip "cd /srv && docker load -i project1.tar && docker run -d -p 80:8080 --name project1-container project1"
 -------------------------------------------------------------------------------------------------------
        CHECK connection via SSH
