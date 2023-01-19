kind create cluster
k create namespace ctfd
k create namespace ctf
helm -n ctfd install ctfd  oci://ghcr.io/bman46/ctfd/ctfd -f ./values.yaml

