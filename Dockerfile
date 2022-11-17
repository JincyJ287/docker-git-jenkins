FROM centos

MAINTAINER manikanta@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.zip
RUN tar -xzvf apache*.zip
RUN mv apache-tomcat-9.0.69/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

