Stop-service docker
dockerd.exe  --unregister-service
dockerd.exe --register-service -H localhost:2375 -H npipe://
Start-service docker