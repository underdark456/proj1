DOCKER_HOST = '192.168.24.129'
sync:
        cd ~user/proj1/site; \
        wget -r -e robots=off -l 1 -nd -A 'bugs*.html' https://www.chiark.greenend.org.uk/~sgtatham/bugs.html
build:
        cd ~user/proj1; \
        docker image rm project1
        docker build -t project1 .
        docker save -o project1.tar project1
deploy:
        scp ~user/proj1/project1.tar $(DOCKER_HOST):~user/proj1
        ssh $(DOCKER_HOST) "~user/proj1/kill-em-all.sh"
        ssh $(DOCKER_HOST) "docker container rm project1-container"
        ssh $(DOCKER_HOST) "docker image rm project1"
        ssh $(DOCKER_HOST) "cd ~user/proj1 && docker load -i project1.tar && docker run -d -p 8080:80 --name pr
