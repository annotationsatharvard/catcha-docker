# catcha-docker

First pass at containerizing https://github.com/annotationsatharvard/catcha, the datastore that backs http://annotation.chs.harvard.edu/setup.php.

This container extends tatum/tomcat7.

# Assumptions 
It expects to be linked to a mysql container, configured as per https://github.com/annotationsatharvard/catcha/blob/master/docs/admin-guide/installation.md

# Running 
```
$ docker run -it --rm  --env CATALINA_OPTS="-Xms512m -Xmx512m -XX:MaxPermSize=256m" -p 8080:8080 --link mysql:mysql ccnmtl/catcha
```

