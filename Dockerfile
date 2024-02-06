# Use the official Tomcat base image
FROM tomcat:11-jre17

# Copy the WAR file to the webapps directory
COPY target/petclinic.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
