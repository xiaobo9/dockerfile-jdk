FROM openjdk:8-alpine

# http://central.maven.org/maven2/org/sonarsource/scanner/cli/sonar-scanner-cli/3.3.0.1492/
# https://github.com/newtmitch/docker-sonar-scanner/blob/master/Dockerfile.sonarscanner-3.0.3-alpine 

ENV TZ=Asia/Shanghai

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk update && apk add --no-cache tzdata && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone 

RUN apk add --no-cache nodejs nodejs-npm && \
    npm config set registry https://registry.npm.taobao.org/ && \
    npm config set electron_mirror https://npm.taobao.org/mirrors/electron/ && \
    npm config set chromedriver_cdnurl https://npm.taobao.org/mirrors/chromedriver/ && \
    npm config set sass_binary_site https://npm.taobao.org/mirrors/node-sass/ && \
    npm config set phantomjs_cdnurl https://npm.taobao.org/mirrors/phantomjs/ && \
    npm config set disturl https://npm.taobao.org/dist 

RUN npm install -g eslint eslint-config-standard \
                   eslint-plugin-import eslint-plugin-node eslint-plugin-promise eslint-plugin-standard \ 
                   eslint-plugin-vue babel-eslint

ENV SONAR_RUNNER_HOME=/usr/lib/sonar-scanner

WORKDIR /app

COPY sonar-scanner-cli-3.3.0.1492.zip sonarscanner.zip

RUN unzip sonarscanner.zip && \
    mv sonar-scanner-3.3.0.1492 /usr/lib/sonar-scanner && \
    ln -s /usr/lib/sonar-scanner/bin/sonar-scanner /usr/local/bin/sonar-scanner

COPY sonar-scanner.properties /usr/lib/sonar-scanner/conf/sonar-scanner.properties

CMD ["sonar-scanner"] 
