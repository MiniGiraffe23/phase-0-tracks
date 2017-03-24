# require gems
require 'sinatra'
require 'sinatra/reloader' 
require 'sqlite3'

configure :production do 
	enable :reloader
end

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}!"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end
# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that retrieves and address
# make up and address
get '/contact' do
	"1432 River Road, Chicago, IL 60606"
end

# write GET route that takes name as query paramater
# prints "Good job, [name]!" if parameter present
# prints "Good job!" if parameter not present t a
get '/great_job' do
	name = params[:name]
	if name 
		"Good job, #{params[:name]}!"
	else 
		"Good job!"
	end
end

# Write get route that uses parameters to add two numbers 
# Responds with result
get '/:numberOne/add/:numberTwo' do
	numberOne = params[:numberOne].to_i
	numberTwo = params[:numberTwo].to_i

	answer = numberOne + numberTwo
	"#{answer.to_s}"
end

# OPTIONAL write a route that allows user to search database (name, or other attribute)
get '/students_campus/:campus' do
	student = db.execute("SELECT * FROM students WHERE campus = ?", [params[:campus]])
	student.to_s
end
