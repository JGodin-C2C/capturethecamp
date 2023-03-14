
summon -f infrastructure/secrets.yaml kubectl create namespace ctfd
summon -f infrastructure/secrets.yaml kubectl create namespace ctf
summon -f infrastructure/secrets.yaml kubectl create namespace

summon -f infrastructure/secrets.yaml helm -n ctfd install ctfd  oci://ghcr.io/bman46/ctfd/ctfd -f ./values.yaml

