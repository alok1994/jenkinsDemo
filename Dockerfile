# use a node base image
FROM ubuntu

# set maintainer
#LABEL maintainer "miiro@getintodevops.com"
RUN apt-get install net-tools
# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8080 || exit 1

#EXPOSE 8080
