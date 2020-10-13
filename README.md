# template-docker-symfony

Starter kit symfony / vue 3 sous docker

Contient :
 - un serveur apache / php7.3,
 - un serveur mysql (mariadb 10.5.6),
 - un serveur mail (maildev),
 - un rabbitmq
 - un serveur node pour la gestion du front
 - un Makefile
 
 Les commandes make : 
 - bash       : Accès à la ligne de commandes sur le conteneur du site
 - bash-front : Accès à la ligne de commandes sur le conteneur front
 - help       : Affiche cette aide
 - ps         : Affiche les containers docker
 - start      : Démarre les services docker
 - stop        : Stoppe les services docker
 
 le docker compose est paramétré pour un site placé dans le dossier 'app'
 
 Pour démarrer un projet symfony : 
 
 ~~~
 git clone git clone https://github.com/timinh/template-docker-symfony.git nom_du_projet
 ~~~
 
 Ensuite 2 solutions : 
 1 / Créer un nouveau projet symfony : 
  - Créer un dossier app,
  - lancer la commande 'make start',
  - Une fois que docker a lancé tous les conteneurs, lancer la commande 'make bash' pour arriver dans le bash du conteneur du dossier,
  - Pour la suite, voir la doc de symfony
  
  
 2 / Cloner un projet existant : 
  - git clone https:/github.com/monPseudo/monSuperProjet.git app,
  - modifier le fichier de paramétrage de votre projet pour être en accord avec le docker-compose,
  - lancer la commande 'make start',
  - ne pas oublier en suite de se connecter en bash (make bash) puis de faire un composer install
  
  Il est possible d'utiliser le template prêt à l'emploi en clonant le dépot : 
  git clone https://github.com/timinh/template-symfony-vue.git app
