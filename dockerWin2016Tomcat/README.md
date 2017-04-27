
## Running tomcat as a container using windowsservercore image

Download **windowsservercore** image using below command:

`docker pull microsoft/windowsservercore` 

Get this repository
`git clone https://github.com/getreddy/getdocker.git`

To run tomcat, it requires JDK to be installed along with setting path for JAVA_HOME and JRE_HOME (taken care by Dockerfile). 

`cd getdocker/dockerWin2016Tomcat`

**Download** [OracleJRE](http://www.oracle.com/technetwork/java/javase/downloads/server-jre8-downloads-2133154.html) 
(choose Windows x64) , Don't extract this download file.

Note: I took help in setting up JDK/JRE from @StefanScherer [Java8](https://github.com/StefanScherer/dockerfiles-windows/tree/master/java/oracle/java-8)

**Download** [Tomcat](http://mirrors.advancedhosters.com/apache/tomcat/tomcat-9/v9.0.0.M20/bin/apache-tomcat-9.0.0.M20-windows-x64.zip) 
and extract it as new folder “Tomcat9” under directory getdocker/dockerWin2016Tomcat/  
Note: “Tomcat9” folder should be at same location where Dockerfile exists. 

**Build Docker image:**
`docker build -t microsoft/windowsservercore:latest -f Dockerfile . `

Run container (as daemon -d) after Image build:

`docker run -d microsoft/windowsservercore C:\Tomcat9\bin\catalina.bat run`

Verify the container running 

`docker ps `

**Access tomcat index page:**

`docker inspect <ContainerID> `

// This will show **network IP** used by container. Copy paste that IP and use below URL on host machine:

`http://<IP>:8080`
