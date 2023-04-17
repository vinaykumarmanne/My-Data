FROM tomcat:latest
EXPOSE 8080
RUN rm -frv /usr/local/tomcat/webapps/*
ADD /var/lib/jenkins/workspace/betterreads-0.0.1/target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
