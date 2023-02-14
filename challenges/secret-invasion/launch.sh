#/usr/bin/bash
#docker run -v $(pwd)/site:/var/www/html/ -v $(pwd)/flag:/flag  -p 8080:80 -it php-command-injection

#===== create first challenge
kubectl apply -n ctfinfra -f secret.yaml
kubectl create serviceaccount -n ctfinfra ctfaccount
kubectl apply -n ctfinfra -f role.yaml
kubectl apply -n ctfinfra -f rolebinding.yaml


