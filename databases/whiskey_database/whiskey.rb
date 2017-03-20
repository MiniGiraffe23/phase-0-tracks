# WHISKEY DATABASE
# Create database of "Whiskies"

require 'sqlite3'
database = SQLite3::Database.new("whiskies.db")

# Create table to store whiskies:
# 	-name
# 	-year
# Create table to store:
# 	-type
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


