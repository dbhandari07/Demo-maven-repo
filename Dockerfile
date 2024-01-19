FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
# Change ownership of the webapps directory to allow copying files during runtime
RUN chown -R 1000:1000 /usr/local/tomcat/webapps
COPY ./*.war /usr/local/tomcat/webapps

