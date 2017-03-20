# WHISKEY DATABASE
# Create database of "Whiskies"

require 'sqlite3'
database = SQLite3::Database.new("whiskies.db")

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
# Create table to store reviews:
# 	-username
# 	-comment
# 	-stars
# Define method to allow users to search for a particular whiskey
# Define method to allows users to add a whiskey (if not already in database) or their own review
# Define method to display data from all tables
# Add user interface to get input from user


