FROM ubuntu:latest
RUN apt-get update && apt-get install -y -q nginx
Copy index.html /usr/share/ngins/html/
CMD ["nginx", "-g", "daemon off;"]
