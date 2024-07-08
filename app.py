# Importing the libraries
from flask import Flask, render_template
# from flask_mysqldb import MySQL
# import MySQLdb.cursors
import sqlite3

#create flask app
app = Flask(__name__, static_folder='static')

################################################################

# Creating the database for testing purposes
connection = sqlite3.connect('database.db')
with open('schema.sql') as f:
  connection.executescript(f.read())
connection.commit()
connection.close()

def get_db_connection():
  conn = sqlite3.connect('database.db')
  conn.row_factory = sqlite3.Row
  return conn

################################################################

#app.config['MYSQL_HOST'] = 'localhost'
#app.config['MYSQL_USER'] = 'root'
#app.config['MYSQL_PASSWORD'] = 'Password@123'
#app.config['MYSQL_DB'] = 'capstone'

# mysql = MySQL(app)


@app.route('/')
def home():
   ## sqlite connection
   conn = get_db_connection()
   data = conn.execute('SELECT * FROM plans').fetchall() 
   conn.close()
   #cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
   #cursor.execute('SELECT * FROM plans;')
   #data = cursor.fetchall()
   return render_template('index.html' , data=data)

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/contact')
def contact():
    return render_template('contact.html')

if __name__ == '__main__':
    app.run(debug=True)
