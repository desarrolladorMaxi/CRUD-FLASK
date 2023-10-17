from flask import Flask, render_template, request, redirect, url_for
import os
import database as db

template_dir = os.path.dirname(os.path.abspath(os.path.dirname(__file__)))
template_dir = os.path.join(template_dir, 'src', 'templates')

app = Flask(__name__, template_folder = template_dir)

#Rutas de la aplicación
@app.route('/')
def home():
    cursor = db.database.cursor()
    cursor.execute("SELECT * FROM notebooks")
    myresult = cursor.fetchall()
    #Convertir los datos a diccionario
    insertObject = []
    columnNames = [column[0] for column in cursor.description]
    for record in myresult:
        insertObject.append(dict(zip(columnNames, record)))
    cursor.close()
    return render_template('index.html', data=insertObject)

#Ruta para guardar usuarios en la bdd
@app.route('/user', methods=['POST'])
def addUser():
    marca = request.form['marca']
    modelo = request.form['modelo']
    pulgadas = request.form['pulgadas']
    procesador = request.form['procesador']
    ram = request.form['ram']
    disco = request.form['disco']

    if marca and modelo and pulgadas and procesador and ram and disco:
        cursor = db.database.cursor()
        sql = "INSERT INTO notebooks (marca, modelo, pulgadas, procesador, ram, disco) VALUES (%s, %s, %s, %s, %s, %s)"
        data = (marca, modelo, pulgadas, procesador, ram, disco)
        cursor.execute(sql, data)
        db.database.commit()
    return redirect(url_for('home'))

@app.route('/delete/<string:id>')
def delete(id):
    cursor = db.database.cursor()
    sql = "DELETE FROM notebooks WHERE id=%s"
    data = (id,)
    cursor.execute(sql, data)
    db.database.commit()
    return redirect(url_for('home'))

@app.route('/edit/<string:id>', methods=['POST'])
def edit(id):
    marca = request.form['marca']
    modelo = request.form['modelo']
    pulgadas = request.form['pulgadas']
    procesador = request.form['procesador']
    ram = request.form['ram']
    disco = request.form['disco']

    if marca and modelo and pulgadas and procesador and ram and disco:
        cursor = db.database.cursor()
        sql = "UPDATE notebooks SET marca = %s, modelo = %s, pulgadas = %s, procesador = %s, ram = %s, disco = %s WHERE id = %s"
        data = (marca, modelo, pulgadas, procesador, ram, disco, id)
        cursor.execute(sql, data)
        db.database.commit()
    return redirect(url_for('home'))

if __name__ == '__main__':
    app.run(debug=True, port=4000)