FROM docker.io/xzxiaoshan/openoffice:latest
FROM docker.io/tomcat:8-jdk8 as tomcat

MAINTAINER 365384722@qq.com

WORKDIR /usr/local/tomcat

COPY --from=tomcat /usr/local/tomcat /usr/local/tomcat

ENV CATALINA_HOME=/usr/local/tomcat
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib

EXPOSE 8080

CMD ["catalina.sh" "run"]
