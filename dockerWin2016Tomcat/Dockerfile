FROM microsoft/windowsservercore:latest

ENV JAVA_PKG=server-jre-8u131-windows-x64.tar.gz \
    JAVA_HOME=C:\\jdk1.8.0_131 \
    JRE_HOME=C:\\jdk1.8.0_131\\jre \
    CATALINA_HOME=C:\\Tomcat9

ADD $JAVA_PKG /
ADD Tomcat9 C:\\Tomcat9
RUN setx /M PATH %PATH%;%JAVA_HOME%\bin
