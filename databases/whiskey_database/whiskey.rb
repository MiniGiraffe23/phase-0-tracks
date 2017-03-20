# WHISKEY DATABASE
# Create database of "Whiskies"

require 'sqlite3'
database = SQLite3::Database.new("whiskies.db")
database.results_as_hash = true

# Create table to store whiskies:
# 	-name
# 	-year
create_whiskey_table = <<-SQL
	CREATE TABLE IF NOT EXISTS whiskey(
		whiskey_id INTEGER PRIMARY KEY,
		whiskey_name VARCHAR (100),
		year INTEGER,
		type_id INTEGER,
		details_id INTEGER,
		reviews_id INTEGER,
		FOREIGN KEY (type_id) REFERENCES whiskey_type(type_id),
		FOREIGN KEY (details_id) REFERENCES whiskey_details(details_id),
		FOREIGN KEY (reviews_id) REFERENCES whiskey_reviews(reviews_id)
	)
SQL
database.execute(create_whiskey_table)

# Create table to store:
# 	-type
create_whiskey_type_table = <<-SQL
	CREATE TABLE IF NOT EXISTS whiskey_type(
		type_id INTEGER PRIMARY KEY,
		type_name VARCHAR (150)
	)
SQL
database.execute(create_whiskey_type_table)

# Create table to store details:
# 	-taste
# 	-finish
# 	-price
create_whiskey_details = <<-SQL
	CREATE TABLE IF NOT EXISTS whiskey_details(
		details_id INTEGER PRIMARY KEY,
		taste VARCHAR (255),
		finish VARCHAR (255),
		price INTEGER
	)
SQL
database.execute(create_whiskey_details)

# Create table to store reviews:
# 	-username
# 	-comment
# 	-stars
create_whiskey_reviews = <<-SQL
	CREATE TABLE IF NOT EXISTS whiskey_reviews(
		reviews_id INTEGER PRIMARY KEY,
		username VARCHAR (150),
		comment VARCHAR (255),
		stars INTEGER,
		whiskey_id INTEGER,
		FOREIGN KEY (whiskey_id) REFERENCES whiskey(whiskey_id)
	)
SQL
database.execute(create_whiskey_reviews)

# Define method to allows users to add a whiskey (if not already in database) or their own review
def add_whiskey(database, whiskey, year, type_id, details_id, reviews_id)
	database.execute("INSERT INTO whiskey (whiskey_name, year, type_id, details_id, reviews_id) VALUES (?, ?, ?, ?, ?)", [whiskey_name, year, type_id, details_id, review_id])
end

def create_whiskey_type(database, type_name)
	database.execute("INSERT INTO whiskey_type (type_name) VALUES (?)", [type])
end
# Define method to allow users to search for a particular whiskey


# Define method to display data from all tables
# Add user interface to get input from user


