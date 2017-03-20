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
def add_whiskey(database, whiskey_name, year, type_id, details_id, reviews_id)
	database.execute("INSERT INTO whiskey (whiskey_name, year, type_id, details_id, reviews_id) VALUES (?, ?, ?, ?, ?)", [whiskey_name, year, type_id, details_id, review_id])
end

def create_whiskey_type(database, type_name)
	database.execute("INSERT INTO whiskey_type (type_name) VALUES (?)", [type_name])
end

def create_whiskey_details(database, taste, finish, price)
	database.execute("INSERT INTO whiskey_details (taste, finish, price) VALUES (?, ?, ?)", [taste, finish, price])
end

def create_whiskey_reviews(database, username, comment, stars, whiskey_id)
	database.execute("INSERT INTO whiskey_reviews (username, comment, stars, whiskey_id) VALUES (?, ?, ?, ?)", [username, comment, stars, whiskey_id])
end

# Define method to allow users to search for a particular whiskey by name or type
def search_results(database, search_item)
	database.execute("SELECT * FROM whiskey join whiskey_type on whiskey_id = type_id WHERE whiskey_name = search_item or type_name = search_item")
end

def display_all_whiskies(database)
	print "Here is a list of all the whiskies in our library:\r\n"
	name_of_whiskey = database.execute("SELECT * FROM whiskey;")
	name_of_whiskey.each do |whiskey|
		puts "#{whiskey['whiskey_name']}, #{whiskey['year']}"
	end
end
# Define method to display data from all tables
def display_all_data(database)
	puts "Here is a detailed description of the whiskeies in our library along with user reviews and ratings:"
	puts ""
	all_data = db.execute("SELECT * FROM whiskey, whiskey_type, whiskey_details AND whiskey_reviews WHERE whiskey_reviews.whiskey_id = whiskey.whiskey_id AND whiskey.details_id = whiskey_details.details_id ORDER BY whiskey_id")
	all_data.each do |whiskey|
		puts "#{whiskey['whiskey_name']}, #{whiskey[year]}, TASTE: #{whiskey_details['taste']}, FINISH: #{whiskey_details['finish']}, REVIEW: #{whiskey_reviews['username']},
			#{whiskey_reviews['comment']}, #{whiskey_reviews['rating']}"
		puts "----------------------------------------------------------------------------------------------"
	end
	puts "That's all we have for now."
end
# Add user interface to get input from user

