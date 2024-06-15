# Importing the libraries
from flask import Flask, render_template
import sqlite3

#create flask app
app = Flask(__name__, static_folder='static')

################################################################

# Creating the database for testing purposes
# connection = sqlite3.connect('database.db')
# with open('schema.sql') as f:
    # connection.executescript(f.read())
# connection.commit()
# connection.close()

################################################################

def get_db_connection():
    conn = sqlite3.connect('database.db')
    conn.row_factory = sqlite3.Row
    return conn

@app.route('/')
def home():
    conn = get_db_connection()
    plan = conn.execute('SELECT * FROM plan').fetchall() 
    conn.close()
    return render_template('index.html', plan=plan)

if __name__ == '__main__':
    app.run(debug=True)