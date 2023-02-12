kind create cluster --config=./kind.config

kubectl create namespace ctfd
kubectl create namespace ctf

helm -n ctfd install ctfd  oci://ghcr.io/bman46/ctfd/ctfd -f ./values.yaml

