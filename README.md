*French* below
# How to do
## Requirement
- Install Docker (*Docker-Desktop for Win*) \
See *https://www.docker.com/* for more detail

- Install docker-compose \
See *https://github.com/docker/compose/releases* \
***On windows***
    - *Download docker-compose-Windows-x86_64.exe from the release notes page*
    - *Rename to* ***docker-compose.exe***
    - *Move* ***docker-compose.exe*** *in* **C:\Program Files\Docker\Docker\resources\bin**

### Get Docker environment for new PHP project
```
git clone https://github.com/cadjou/docker-php-mysql-environment
```

## Start the Docker container
**In the folder project and run**
```
cd docker-php-mysql-environment
docker-compose up --build -d
```
**Take few minutes to Start up** \
*install PHP requirement automatically by *./Dockerfile*. **Setup your needs in it**

## Run your page
Go to => http://localhost:8000 and have fun\
Use environment variable **DATABASE_URL** to connecte to the database
```php
 <?php getenv('DATABASE_URL');
```

### External connexions by default
- Webserver Port: **8000**
- MySQL Port: **33061**
- Connexion MySQL **external**: mysql://localhost:*3306****1***/*symfony*
- External Terminal: ```docker exec -it {Dir_Name}_php_1 /bin/bash``` and in bash-5.0#```cd /srv/app```
    - Default ```{Dir_Name}```: docker-php-mysql-environment

## Setup Docker-compose in case
See *./docker-compose.yml* to set up **MYSQL_*** environment variables and used **Ports**

:warning: Don't change ```entrypoint: php -S 0.0.0.0:8000``` just the first *8000* ```ports: - {8000}:8000```\
:information_source: See more information => https://docs.docker.com/compose/compose-file/

:information_source: Can change the DocumentRoot ```working_dir: /srv/app/public``` */srv/app/public* is abstract from local *{thisDir}/public*

## Setup Version PHP and MySQL
See ./Dockerfile and change the version.
```
FROM php:7.4-fpm-alpine AS php
FROM library/mysql:5.7 AS mysql
```

:information_source: See all version
- PHP => https://hub.docker.com/_/php
- MySQL => https://hub.docker.com/_/mysql
---
*French*
# Installation
## Pré-requis
- Installer Docker (*Docker-Desktop pour Windows*) \
:information_source: Source *https://www.docker.com/* pour plus de détails

- Installer docker-compose \
:information_source: Source *https://github.com/docker/compose/releases*\
***Pour Windows***
    - *Télécharger docker-compose-Windows-x86_64.exe from the release notes page*
    - *Renommer le en* ***docker-compose.exe***
    - *Déplacer* ***docker-compose.exe*** *in* **C:\Program Files\Docker\Docker\resources\bin**

### Cloner le Git
```
git clone https://github.com/cadjou/docker-php-mysql-environment
```
## Démarrer le *Container* Docker
**Aller dans le dossier du projet et démarrer l'environnement**
```
cd docker-php-mysql-environment
docker-compose up -d
```
**Cela prendre quelques minutes** \
*L'nstallion des Pré-requis PHP est automatique selon le fichier *./Dockerfile*. **Modifier selon vos besoins**

## Aller sur vos pages
Aller sur http://localhost:8000 et bon codage\
Utiliser la variable d'environnement **DATABASE_URL** pour se connecter à la base de données
```php
 <?php getenv('DATABASE_URL');
```

### Les connexion externes
- Port du Serveur Web: **8000**
- Port de MySQL: **33061**
- Connexion MySQL **external**: mysql://localhost:*3306****1***/*symfony*
- Depuis un terminal: ```docker exec -it {Dir_Name}_php_1 /bin/bash``` et puis dans bash-5.0#```cd /srv/app```
    - Par défaut ```{Dir_Name}```: docker-php-mysql-environment

## Paramétrer Docker-compose en cas
Voir le fichier *./docker-compose.yml* et paramétrer les variables d'environnement **MYSQL_*** et les ports utilisés **Ports**

:warning: Ne pas changer ```entrypoint: php -S 0.0.0.0:80``` mais juste le 1er port *8000* ```ports: - {8000}:80```\
:information_source: Pour plus d'informations => https://docs.docker.com/compose/compose-file/

:information_source: Pour changer le DocumentRoot ```working_dir: /srv/app/public``` */srv/app/public* représente le dossier *{ceDossier}/public*

## Paramétrer les versions PHP et MySQL
Voir le fichier ./Dockerfile pour changer les versions
```
FROM php:7.4-fpm-alpine AS php
FROM library/mysql:5.7 AS mysql
```

:information_source: Voir tous les version
- PHP => https://hub.docker.com/_/php
- MySQL => https://hub.docker.com/_/mysql