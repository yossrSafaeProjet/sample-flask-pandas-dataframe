# Utilisez une image Python officielle comme base
FROM python:3.8

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez le fichier requirements.txt dans le conteneur
COPY requirements.txt /app/



# Copiez le contenu du répertoire actuel dans le conteneur à /app/
COPY . /app/

# Exposez le port sur lequel l'application sera en cours d'exécution
EXPOSE 31201

# Commande pour exécuter l'application
CMD ["python", "app.py"]
