FROM tutum/tomcat:7.0
MAINTAINER ccnmtl <ccnmtl-sysadmin@columbia.edu>

#RUN apt-get update
#RUN DEBIAN_FRONTEND=noninteractive apt-get -y --force-yes install imagemagick

COPY ./files/catch-0.5.4.war /tomcat/webapps/catch.war
COPY ./files/catch-config.properties  /tomcat/lib/

EXPOSE 8080
CMD ["/run.sh"]
