import pyodbc

server = '(local)' 
database = 'Banco2' 
username = 'DESKTOP-S11KFF3\Roth' 
password = '' 
cnxn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER='+server+';DATABASE='+database+';UID='+username+';PWD='+ password)
cursor = cnxn.cursor()