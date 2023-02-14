#/usr/bin/bash
#docker run -v $(pwd)/site:/var/www/html/ -v $(pwd)/flag:/flag  -p 8080:80 -it php-command-injection

#===== create first challenge
helm -n ctf install md5collision ../../chart/challenge/ -f ./values.yaml
kubectl create -n ctf configmap  md5collisionchallenge --from-file=./site/
kubectl create -n ctf secret generic md5collisionflag --from-file=flag=flag/flag.txt


