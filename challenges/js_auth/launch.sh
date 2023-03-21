#/usr/bin/bash
#docker run -v $(pwd)/site:/var/www/html/ -v $(pwd)/flag:/flag  -p 8080:80 -it php-command-injection

#===== create first challenge
summon -f ../../infrastructure/secrets.yml helm -n ctf install jsauth  ../../chart/challenge/ -f ./values.yaml
summon -f ../../infrastructure/secrets.yml kubectl create -n ctf configmap  jsauth --from-file=./site/


