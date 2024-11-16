FROM maven:3.6.0-jdk-8-alpine

ENV TZ=Asia/Shanghai

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
     apk update && apk add --no-cache tzdata && \
     ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
     echo $TZ > /etc/timezone

COPY settings.xml /usr/share/maven/ref/

WORKDIR /app