# Look ma ! no php !

On voit dans la source du script que l'ip est passée au `exec()` sans vérification, donc
rien n'empêche d'ajouter des commandes arbitraires après l'ip. J'ai utilisé le
payload suivant:

```
flup || cat /flag/flag ;
```
