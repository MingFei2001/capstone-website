from flask import Flask, render_template, request
import sqlite3

#create flask app
app = Flask(__name__, static_folder='static')

connection = sqlite3.connect('database.db')

with open('schema.sql') as f:
    connection.executescript(f.read())

connection.commit()
connection.close()

@app.route('/')
def home():
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)


