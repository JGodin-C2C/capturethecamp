# Subversion

C'est en réalité du git, et le .git du webserver est accessible. Un simple `wget
--recursive` permet de reconstruire le dépot, et il suffit ensuite de voir dans
l'historique pour remonter et trouver le mot de passe avant que celui-ci ne
soit encodé en md5.
