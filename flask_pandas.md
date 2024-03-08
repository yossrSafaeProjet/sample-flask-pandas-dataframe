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
flask run 

