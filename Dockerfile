FROM tutum/tomcat:7.0
MAINTAINER ccnmtl <ccnmtl-sysadmin@columbia.edu>

COPY ./files/catch-0.5.4.war /tomcat/webapps/catch.war
COPY ./files/catch-config.properties  /tomcat/lib/
COPY ./files/server.xml  /tomcat/conf/

EXPOSE 8080
CMD ["/run.sh"]
