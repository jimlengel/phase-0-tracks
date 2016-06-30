# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true


# A /contact route that displays an address (you can make up the address).
get '/contact/:address' do
  address = params[:address]
  "The address is: #{address}."
end

# A /great_job route that can take a person's name as a query parameter 
# (not a route parameter) and say "Good job, [person's name]!". 
# If the query parameter is not present, the route simply says "Good job!"
get '/great_job/' do
  person = params[:person]
  if person
    "Good job, #{person}!"
  else
    "Good job!"
  end
end

# A route that uses route parameters to add two numbers and respond with the result. 
# The data types are tricky here -- when will the data need to be (or arrive as) a string?
get '/add/:num1/:num2' do
  num1 = params[:num1]
  num2 = params[:num2]
  sum = num1.to_i+num2.to_i
  "#{num1} + #{num2} = #{sum}"
  
end

# Optional bonus: Make a route that allows the user to search the database in some way 
# -- maybe for students who have a certain first name, or some other attribute. 
# If you like, you can simply modify the home page to take a query parameter, 
# and filter the students displayed if a query parameter is present.
#     http://localhost:9393/students/?age=100
get '/students/' do
  age = params[:age]
  age_int=age.to_i
  students = db.execute("SELECT * FROM students")
  response = "The following students are older than #{age}.<br><br>"
  students.each do |student|
    if student['age'].to_i > age_int
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
    end
  end
  response
end


# Is Sinatra the only web app library in Ruby? What are some others?
# Sinatra
# Rails
# Padrino
# Lotus
# https://blog.codeship.com/a-survey-of-non-rails-frameworks-in-ruby-cuba-sinatra-padrino-lotus/

# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
# Mongo
# ActiveRecord
# Datamapper

# What is meant by the term web stack?
# The stack of software that will contain an operating system, Web server, database server, and programming language.
# For example, the "LAMP" stack is: Linux, Apache, MySQL, PHP



# # # # # # # # # # # # # # # 

# get '/contact/:address' do
#   "The address is: #{params[:address]}."
# end

# get

# get '/:person_1/loves/:person_2' do
#   "#{params[:person_1]} loves #{params[:person_2]}"
# end

# write a GET route that retrieves
# all student data
# get '/students' do
#   students = db.execute("SELECT * FROM students")
#   response = ""
#   students.each do |student|
#     response << "ID: #{student['id']}<br>"
#     response << "Name: #{student['name']}<br>"
#     response << "Age: #{student['age']}<br>"
#     response << "Campus: #{student['campus']}<br><br>"
#   end
#   response
# end

# write a GET route that retrieves
# a particular student

# get '/students/:id' do
#   student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
#   student.to_s
# end



# write a basic GET route
# add a query parameter
#GET /

# get '/' do
#   "#{params[:name]} is #{params[:age]} <b>years</b> old."
# end

# get '/' do
#   name=params[:name]
#   if name
#    "Hello, #{name}."
#   else
#     "Hello, you."
#   end
# end


# write a GET route with
# route parameters

# get '/about/:person' do
#   person = params[:person]
#   "#{person} is a programmer, and #{person} is learning Sinatra."
# end

