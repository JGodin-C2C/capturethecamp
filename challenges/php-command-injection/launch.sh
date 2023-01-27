#/usr/bin/bash
#docker run -v $(pwd)/site:/var/www/html/ -v $(pwd)/flag:/flag  -p 8080:80 -it php-command-injection

#===== create first challenge
kubectl apply -n ctfinfra -f Deployment.yaml
kubectl create -n ctfinfra configmap  phpinjectionchallenge --from-file=./site/
kubectl create -n ctfinfra secret generic phpinjectionflag --from-file=flag=flag/flag.txt


