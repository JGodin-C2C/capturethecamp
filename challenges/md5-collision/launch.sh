#/usr/bin/bash
#docker run -v $(pwd)/site:/var/www/html/ -v $(pwd)/flag:/flag  -p 8080:80 -it php-command-injection

#===== create first challenge
kubectl apply -n ctf -f Deployment.yaml
kubectl create -n ctf configmap  md5collisionchallenge --from-file=./site/
kubectl create -n ctf secret generic md5collisionflag --from-file=flag=flag/flag.txt


