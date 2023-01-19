#/usr/bin/bash
#docker run -v $(pwd)/site:/var/www/html/ -v $(pwd)/flag:/flag  -p 8080:80 -it php-command-injection

#===== create first challenge
kubectl apply -n ctf -f Deployment.yaml
kubectl create -n ctf configmap  picklesecuritchallenge --from-file=./site/
kubectl create -n ctf secret generic picklesecuritflag --from-file=flag=flag/flag.txt


