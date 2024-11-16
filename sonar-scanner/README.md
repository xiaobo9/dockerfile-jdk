# sonar-scanner with node npm eslint

通过 eslint 进行代码检查并将检查结果发送到  `http://sonar.xiaobo9.com`

## 项目配置

在源码根目录增加配置文件 `sonar-project.properties`

```
# Required metadata
sonar.projectKey=com.xiaobo9.oneTeam:ProjectKey
# sonarqube 上显示的名字
sonar.projectName=ProjectName
sonar.projectVersion=1.0.0

# Comma-separated paths to directories with sources (required)
sonar.sources=src

# exclude some folders (typically dependencies)
sonar.exclusions=src/assets/**/*

# Encoding of the source files
sonar.sourceEncoding=UTF-8

# 镜像中默认指定了 sonarqube 地址为 http://sonar.xiaobo9.com, 也可以通过下面的参数指定其他服务
# sonar.host.url=http://balabalabala

```

## 手动 docker 容器执行检查

```bash
# 在 web 源码根目录执行如下命令，将自动通过 eslint 检查代码，并将结果发送到 http://sonar.xiaobo9.com
docker run -it -v $(pwd):/app registry.xiaobo9.com:5000/sonarqube/sonar-scanner:alpine-node
```

