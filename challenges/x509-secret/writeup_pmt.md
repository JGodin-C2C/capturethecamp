# Encrypt0r

Encore un challenge proposé par un javateux.

On dézippe le jar, on voit tout un tas de classes, dû à la dépendance sur apache
`commons-io`, mais la seule intéressante est `com.camptocamp.encrypt0r.Encryptor`.

On peut copier/coller le contenu dans une console Groovy, virer la dépendance à
IOUtils dans les imports, les `System.exit()`, réécrire la fonction readURL
(merci Groovy) sans IOUtils:

```
   private static String readUrl(URL u) throws Exception {
        u.text
    }
```

Puis simplement modifier le code ligne 45/46:

```
        new String(cipher.doFinal(enc));
        System.out.println("I found the flag, but I won't give it to you.");

->

       println new String(cipher.doFinal(enc))
```

Et cela donne:

```
C2C{eAsy_x5O9_CryPto}
```
