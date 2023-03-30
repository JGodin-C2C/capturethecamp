# Authentication

La première page n'indique pas grand chose, mais dans les sources, on voit
qu'une autre page `js_auth.html` est censée être disponible (commentée dans les
sources html).

Dans les sources de la page js_auth.html, on a le script js qui vérifie le mot
de passe, il est alors trivial de résoudre le challenge:

```
atob('QzJDe0QwX04wVF9TaDRyM19zZWNyZXRfd2l0aF9qc30')
'C2C{D0_N0T_Sh4r3_secret_with_js}'
```
