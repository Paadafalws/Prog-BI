import sqlite3

dbase=sqlite3.connect('Python.db')

c= dbase.cursor()
dbase.execute( '''CREATE TABLE IF NOT EXISTS Python(
                ID INT PRIMARY KEY NOT NULL,
                NAME TEXT NOT NULL, PCUSTO INT , PVENDA INT)''')

dbase.commit()

def write(ID,NAME,PCUSTO,PVENDA):
    c.execute(''' INSERT INTO Python (ID,NAME,PCUSTO,PVENDA) VALUES(?,?,?,?)''',(ID,NAME,PCUSTO,PVENDA))


    dbase.commit()
