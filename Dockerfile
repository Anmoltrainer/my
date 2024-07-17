FROM tomcat:8.0
RUN rm -r /usr/local/tomcat/webapps/*
ADD ./target/*.war /usr/local/tomcat/webapps/
EXPOSE 8181
WORKDIR /usr/local/tomcat/webapps/
CMD ["catalina.sh","run"]

