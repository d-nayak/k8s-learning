#!/usr/bin/bash

set -x 

kubectl delete all --all


# check if local docker is up
status_code=$(curl -I -k -s http://localhost:5000/ | head -n 1 | cut -d' ' -f 2)
if [ "$status_code" != "200" ]
then
	# Run this only once!
	echo -n "Local docker not up! Starting local docker service... "
	docker run -d -p 5000:5000 --restart=always --name registry registry:2
	echo "done!"
	
fi

WEB_POD=converter1

cd webserver 
docker build -f Dockerfile.converter -t localhost:5000/${WEB_POD} .
docker push localhost:5000/${WEB_POD}
cd ..
kubectl apply -f ./service1.yaml
kubectl apply -f ./converter1.yaml


kubectl get all
