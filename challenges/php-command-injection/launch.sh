#/usr/bin/bash
#docker run -v $(pwd)/site:/var/www/html/ -v $(pwd)/flag:/flag  -p 8080:80 -it php-command-injection

#===== create first challenge
summon -f ../../infrastructure/secrets.yml kubectl create namespace ctfinfra
summon -f ../../infrastructure/secrets.yml helm install -n ctfinfra phpinjection ../../chart/challenge/ -f ./values.yaml
summon -f ../../infrastructure/secrets.yml kubectl create -n ctfinfra configmap  phpinjectionchallenge --from-file=./site/
summon -f ../../infrastructure/secrets.yml kubectl create -n ctfinfra secret generic phpinjectionflag --from-file=flag=flag/flag.txt


