# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
configure :production do 
	enable :reloader
end

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  	db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
 	redirect '/'
end

get '/students/remove' do
	erb :remove_student
end

post '/students_remove' do
	db.execute("DELETE FROM students WHERE name=?", [params['name']])
	redirect '/'
end
# remove Kolby Mertz, 38, SF
# add static resources