# WHISKEY DATABASE
# Create database of "Whiskies"

require 'sqlite3'
database = SQLite3::Database.new("whiskies.db")
database.results_as_hash = true

# Create table to store whiskies:
# 	-name
create_whiskey_table = <<-SQL
	CREATE TABLE IF NOT EXISTS whiskey(
		whiskey_id INTEGER PRIMARY KEY,
		whiskey_name VARCHAR (100),
		type_id INTEGER,
		details_id INTEGER,
		reviews_id INTEGER,
		FOREIGN KEY (type_id) REFERENCES whiskey_type(type_id),
		FOREIGN KEY (details_id) REFERENCES whiskey_details(details_id),
		FOREIGN KEY (reviews_id) REFERENCES whiskey_reviews(reviews_id)
	)
SQL
database.execute(create_whiskey_table)
=begin
database.execute("INSERT INTO whiskey (whiskey_name, type_id) VALUES ('Angels Envy', 1)")
database.execute("INSERT INTO whiskey (whiskey_name, type_id) VALUES ('Blantons: Straight from the Barrel', 1)")
database.execute("INSERT INTO whiskey (whiskey_name, type_id) VALUES ('Jameson', 2)")
database.execute("INSERT INTO whiskey (whiskey_name, type_id) VALUES ('Bushmills Honey', 2)")
database.execute("INSERT INTO whiskey (whiskey_name, type_id) VALUES ('Johnnie Walker Double Black', 3)")
database.execute("INSERT INTO whiskey (whiskey_name, type_id) VALUES ('Monkey Shoulder', 3)")
database.execute("INSERT INTO whiskey (whiskey_name, type_id) VALUES ('Balvenie 12 Yr. Doublewood', 4)")
database.execute("INSERT INTO whiskey (whiskey_name, type_id) VALUES ('Lagavulin 16 Yr.', 4)")
database.execute("INSERT INTO whiskey (whiskey_name, type_id) VALUES ('Crown Royal Maple', 5)")
database.execute("INSERT INTO whiskey (whiskey_name, type_id) VALUES ('Seagrams V.O.', 5)")
database.execute("INSERT INTO whiskey (whiskey_name, type_id) VALUES ('Bulleit Rye', 6)")
database.execute("INSERT INTO whiskey (whiskey_name, type_id) VALUES ('Angels Envy Rye', 6)")
=end

# Create table to store:
# 	-type
create_whiskey_type_table = <<-SQL
	CREATE TABLE IF NOT EXISTS whiskey_type(
		type_id INTEGER PRIMARY KEY,
		type_name VARCHAR (150)
	)
SQL
database.execute(create_whiskey_type_table)

=begin ADD SOME TYPES FOR USERS TO ALREADY HAVE
database.execute("INSERT INTO whiskey_type (type_name) VALUES ('Bourbon')") => 1
database.execute("INSERT INTO whiskey_type (type_name) VALUES ('Irish')") => 2
database.execute("INSERT INTO whiskey_type (type_name) VALUES ('Blended')") => 3
database.execute("INSERT INTO whiskey_type (type_name) VALUES ('Single Malt')") => 4
database.execute("INSERT INTO whiskey_type (type_name) VALUES ('Canadian')") =>5
database.execute("INSERT INTO whiskey_type (type_name) VALUES ('Rye')") => 6
=end

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
#def add_whiskey(database, whiskey_name, type_id, details_id, reviews_id)
#	database.execute("INSERT INTO whiskey (whiskey_name, type_id, details_id, reviews_id) VALUES (?, ?, ?, ?)", [whiskey_name, type_id, details_id, review_id])
#end

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
	puts "Here is a list of all the whiskies in our library:"
	puts""
	name_of_whiskey = database.execute("SELECT * FROM whiskey;")
	name_of_whiskey.each do |whiskey|
		puts "#{whiskey['whiskey_name']}"
	end
end
# Define method to display data from all tables
def display_all_data(database)
	puts "Here is a detailed description of the whiskeies in our library along with user reviews and ratings:"
	puts ""
	all_data = database.execute("SELECT * FROM whiskey, whiskey_type, whiskey_details, whiskey_reviews WHERE whiskey_reviews.whiskey_id = whiskey.whiskey_id and whiskey.details_id = whiskey_details.details_id ORDER BY whiskey_id")
	all_data.each do |whiskey|
		puts "#{whiskey['whiskey_name']}, TASTE: #{whiskey_details['taste']}, FINISH: #{whiskey_details['finish']}, REVIEW: #{whiskey_reviews['username']},
			#{whiskey_reviews['comment']}, #{whiskey_reviews['rating']}"
		puts "----------------------------------------------------------------------------------------------"
	end
	puts "That's all we have for now."
end

# Add user interface to get input from user

puts "Welcome to the Library of Whiskey Connoisseurs!"
puts "Here you can learn all about various whiskies, enter your own review, or add a whiskey that hasn't yet made it into the library."

#testing method display_all_whiskies(database)
display_all_data(database)