
## Docker Remote API - Windows 2016 server
Goal: Create a cluster using swarm, and launch a service using [Docker Remote API's](https://docs.docker.com/engine/api/v1.26/) . 
e.g get the services either by command 'Invoke-WebRequest -usebasicparsing http://localhost:2375/v1.26/services' or using browser REST client. 

Docker for Windows uses a named pipe npipe:////./pipe/docker_engine to access the REST API. 
To make use of specific port as mentioned above i.e. "localhost:2375", you need to register docker daemon using localhost:2375 and named pipe. Refer [docker daemon registration](https://github.com/getreddy/getdocker/blob/master/dockerEngineAPI/dockerDaemonRegistration.ps1)

### Build a swarm cluster

**Master node** - windows 2016 server and Docker installed. Run below command on master node:

`docker swarm init --advertise-addr=<HOSTIPADDRESS> --listen-addr <HOSTIPADDRESS>:2377`

**Worker nodes** - windows 2016 and Docker installed. Run below command on worker nodes:

`docker swarm join  --token <tokenID> <MastNodeIP>:2377`

Note: get the '<tokenID>' from masternode by running below command on Master node:

`docker swarm join-token worker`

-----

