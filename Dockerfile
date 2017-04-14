FROM tomcat
MAINTAINER rachel

ARG release_version=0.0.0-SNAPSHOT
ADD target/gs-spring-boot-$release_version.war /usr/local/tomcat/webapps/

EXPOSE 8086
CMD ["catalina.sh", "run"]
