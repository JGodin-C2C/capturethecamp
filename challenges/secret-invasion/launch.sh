#/usr/bin/bash
#docker run -v $(pwd)/site:/var/www/html/ -v $(pwd)/flag:/flag  -p 8080:80 -it php-command-injection

#===== create first challenge
summon -f ../../infrastructure/secrets.yml kubectl apply -n ctfinfra -f secret.yaml
summon -f ../../infrastructure/secrets.yml kubectl apply -n ctfinfra -f role.yaml
summon -f ../../infrastructure/secrets.yml kubectl apply -n ctfinfra -f rolebinding.yaml


