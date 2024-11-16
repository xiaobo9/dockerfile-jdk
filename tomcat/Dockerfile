FROM tomcat:8-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/* && \
	apk add --no-cache tzdata ttf-dejavu && \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	echo "Asia/Shanghai" > /etc/timezone && \
	apk del tzdata

COPY server.xml /usr/local/tomcat/conf/server.xml

ENV JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -XX:MaxRAMFraction=1 -Xloggc:/root/gc.log -XX:+PrintGCTimeStamps -Dfile.encoding=utf-8 -Dsun.jnu.encoding=utf-8 -Duser.timezone= -Djava.security.egd=file:/dev/./urandom"

EXPOSE 80