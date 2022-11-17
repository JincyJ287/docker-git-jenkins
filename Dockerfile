FROM ubuntu-latest

MAINTAINER manikanta@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.zip
RUN apt install unzip -y
RUN unzip apache*.tar.gz
RUN mv apache-tomcat-9.0.69/* /opt/tomcat/.
RUN apt -y install java
RUN java -version

