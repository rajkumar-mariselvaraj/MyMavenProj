FROM tomcat
COPY new.war /usr/local/tomcat/webapps/
EXPOSE 8080

