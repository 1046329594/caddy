FROM alpine
MAINTAINER Chenhao Hong <stevenhch1046329594@gmail.com>
RUN apk add bash curl && curl https://getcaddy.com | bash -s personal
ADD entry.sh /usr/local/caddy/
ENV FROM www.2022class1.ga
ENV TO google.com
ENTRYPOINT ["/usr/local/caddy/entry.sh"]