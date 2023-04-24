This is a k8s project consisting of a web-server propped up by a python script, converting temperatures, and front-ended by a NodePort service exposing it to the outside world.

- Ports used:
localhost:30000 -> connects to NodePort -> connects to 8080: exposed by pod/container

Pod creation:
1. Create local docker registry - done once!
$ docker run -d -p 5000:5000 --restart=always --name registry registry:2

2. Change Dockerfile's to now create and push to this registry

3. Instruct k8s to use these locally hosted images

Usage:
$ ./start.sh

Confirm converter-pod and nodeport service running

Connect to localhost:30000
Enjoy!
