# Use an appropriate base image with Java and Tomcat installed
FROM tomcat:9.0-jre11

# Remove existing ROOT folder to replace it with your application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your artifact (WAR file) to Tomcat webapps directory and rename it to ROOT.war
COPY onlinebookstore-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
