Download windowsservercore image using below command:

docker pull microsoft/windowsservercore 

`git clone https://github.com/getreddy/getdocker.git`

To run tomcat, we need to install JDK and JRE path set. 

cd getdocker/dockerWin2016Tomcat

Download JRE from http://www.oracle.com/technetwork/java/javase/downloads/server-jre8-downloads-2133154.html 
(choose Windows x64)

Note: Don't extract it. 

Download Tomcat from http://mirrors.advancedhosters.com/apache/tomcat/tomcat-9/v9.0.0.M20/bin/apache-tomcat-9.0.0.M20-windows-x64.zip 
And extract it as new folder “Tomcat9” under directory getdocker/dockerWin2016Tomcat/  
Note: “Tomcat9” folder should be at same location where Dockerfile exists. 

Build Docker image:
docker build -t microsoft/windowsservercore:latest -f Dockerfile .

Run container (as daemon -d) after Image build:

docker run -d microsoft/windowsservercore C:\Tomcat9\bin\catalina.bat run

Verify the container running 

docker ps 

Access tomcat page:

docker inspect <ContainerID> 

// This will show network IP used by container. Copy paste that IP and use below URL:

http://<IP>:8080 
