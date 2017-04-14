FROM tomcat
MAINTAINER rachel

ARG suffix_version=SNAPSHOT
ADD target/gs-spring-boot-0.0.0-$suffix_version.war /usr/local/tomcat/webapps/

EXPOSE 8086
CMD ["catalina.sh", "run"]
