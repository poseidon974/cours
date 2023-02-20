#### Build en deux étapes
## Première étape : Compiler la documentation dans un dossier
FROM registry.actilis.net/docker-images/mkdocs:latest as constructeur
# COPY .git .git
COPY mkdocs.yml /docs
COPY src        /docs/src
#COPY includes   /docs/includes
RUN mkdocs build


## Deuxième étape : Construire l'image basée sur nginx
FROM registry.actilis.net/docker-images/httpd:2.4-alpine 
COPY --from=constructeur --chown=www-data /docs/site /var/www/html
