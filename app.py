from flask import Flask, jsonify, request, render_template
import psycopg2
from psycopg2.extras import RealDictCursor

app = Flask(__name__)

class City:
    def __init__(self, city, max_population, period_of_max_population, current_population):
        self.city = city
        self.max_population = max_population
        self.period_of_max_population = period_of_max_population
        self.current_population = current_population

    def add_city(self, cursor):
        # Add a new city to the 'cities' table
        cursor.execute(
            "INSERT INTO cities (city, maximum_number_of_the_jewish_population, period_of_maximum_jewish_population, current_Jewish_population) "
            "VALUES (%s, %s, %s, %s) RETURNING city_id",
            (self.city, self.max_population, self.period_of_max_population, self.current_population)
        )
        return cursor.fetchone()[0]

    def update_city_info(self, cursor, city_id):
        # Update information of an existing city in the 'cities' table
        cursor.execute(
            "UPDATE cities SET city=%s, maximum_number_of_the_jewish_population=%s, period_of_maximum_Jewish_population=%s, current_Jewish_population=%s "
            "WHERE city_id=%s",
            (self.city, self.max_population, self.period_of_max_population, self.current_population, city_id)
        )

    def delete_city(self, cursor, city_id):
        # Delete a city by its ID from all relevant tables
        cursor.execute("DELETE FROM famous_persons WHERE city_id=%s", (city_id,))
        cursor.execute("DELETE FROM attractions WHERE city_id=%s", (city_id,))
        cursor.execute("DELETE FROM cities WHERE city_id=%s", (city_id,))

def connect_db():
    return psycopg2.connect( 
        dbname='mtoiemlw', 
        user='mtoiemlw', 
        password='EF9Q-xvOGYwvDO4h_ICMMmIGz7hhH5E4',  
        host='cornelius.db.elephantsql.com', 
        port='5432',
        cursor_factory=RealDictCursor
    )
@app.route('/', methods=['GET'])
def home():
    return render_template('search_form.html')
    
@app.route('/search', methods=['GET', 'POST'])
def search_city_info():
    if request.method == 'GET':
        return render_template('search_form.html')

    if request.method == 'POST':
        city_name = request.form.get('city_name')

    # Connect to the database
    connection = connect_db()
    cursor = connection.cursor()

    # Check if the city exists in the 'cities' table
    cursor.execute("SELECT * FROM cities WHERE city=%s", (city_name,))
    city_info = cursor.fetchone()

    if city_info is None:
        connection.close()
        return jsonify({'error': f"Sorry, we haven't got information about {city_name} yet. Choose another one"}), 404

    city_id = city_info['city_id']  # Extract the city_id for further queries

    # Query famous persons in the city
    cursor.execute("SELECT * FROM famous_persons WHERE city_id=%s", (city_id,))
    famous_persons = cursor.fetchall()

    # Query attractions in the city
    cursor.execute("SELECT * FROM attractions WHERE city_id=%s", (city_id,))
    attractions = cursor.fetchall()

    # Combine the results and return as JSON
    result = {
        'city_info': city_info,
        'famous_persons': famous_persons,
        'attractions': attractions
    }
    
    # Reorder the items in the result dictionary
    ordered_result = {
        'city_info': result['city_info'],
        'attractions': result['attractions'],
        'famous_persons': result['famous_persons'],
    }

    # Close the database connection
    connection.close()

    return jsonify(ordered_result)

if __name__ == '__main__':
    app.run(debug=True)
