#/usr/bin/bash
#docker run -v $(pwd)/site:/var/www/html/ -v $(pwd)/flag:/flag  -p 8080:80 -it php-command-injection

#===== create first challenge
helm -n ctf install gitaccess ../../chart/challenge/ -f ./values.yaml
kubectl create -n ctf configmap gitaccesschallenge --from-file=./site/
kubectl create -n ctf secret generic gitaccessflag --from-file=flag=flag/flag.txt


