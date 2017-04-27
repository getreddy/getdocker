
## Docker Remote API - Windows 2016 server
Goal: Create a cluster using swarm, and launch a service using [Docker Remote API's](https://docs.docker.com/engine/api/v1.26/) . 
e.g get the services either by command 'Invoke-WebRequest -usebasicparsing http://localhost:2375/v1.26/services' or using browser REST client. 

Docker for Windows uses a named pipe npipe:////./pipe/docker_engine to access the REST API
