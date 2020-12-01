FROM nginx:1.17
COPY ./www.chiark.greenend.org.uk/~sgtatham/*.html /usr/share/nginx/html/
