# Use official Tomcat base image
FROM tomcat:9.0

# Remove default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into webapps as ROOT
COPY target/myapp.war /usr/local/tomcat/webapps/

# Expose port 8080 inside container
EXPOSE 8080

# ✅ Start Tomcat using full path
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

