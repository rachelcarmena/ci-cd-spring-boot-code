FROM tomcat
MAINTAINER rachel

ADD targer/gs-spring-boot-0.1.0.war /usr/local/tomcat/webapps/

EXPOSE 8086
CMD ["catalina.sh", "run"]