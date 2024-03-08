#J'ai cloné le projet 
git clone https://github.com/app-generator/flask-pandas-dataframe.git
#J'ai fait ces étapes
cd flask-pandas-dataframe

#Pour crer un environnemnt virtuel
python3 -m venv venv
source venv/bin/activate

#Pour installer les dépendances 
pip3 install -r requirements.txt

#Pour créer la base de donnée 
flask shell
from app import db  # import SqlAlchemy interface
db.create_all()     # create SQLite database and Data table
quit()   

#Installer Sqlite3
sudo apt update
sudo apt install sqlite3

#Load the data into the database
flask load-data titanic-min.csv

#set variable d'environnement
export FLASK_APP=app.py

#Tourner l'application
flask run --host=0.0.0.0 --port=31201


#Pour Le docker 
J'ai crer le Dockerfile pui j'ai fais ces deux commandes
docker volume create portainer_data 
docker run -d -p 32125:8000 -p 32126:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock  -v portainer_datas:/data portainer/portainer-ce:latest

