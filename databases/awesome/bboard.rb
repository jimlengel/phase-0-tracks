# BULLETIN BOARD MAKER
# Allows students to check in at the beginning and the end of class
# The bulletin board shows their name, the project, and its importance (scale of 1-10)


# require gems
require 'sqlite3'
# require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("bboard.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS bboard(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    task VARCHAR(255),
    importance INT
  )
SQL

# create a bboard table (if it's not there already)
db.execute(create_table_cmd)

# add a test bboard
#db.execute("INSERT INTO bboard (name, task, importance) VALUES ('Bob', 'watercolor art', 9)")


def create_bboard(db, name, task, importance)
  db.execute("INSERT INTO bboard (name, task, importance) VALUES (?, ?, ?)", [name, task, importance])
end

def update_bboard(db, name, task, importance)
  db.execute("UPDATE bboard SET task=? WHERE name=?", [task, name])
  db.execute("UPDATE bboard SET importance=? WHERE name=?", [importance, name])
end

def delete_bboard(db, name)
  db.execute("DELETE FROM bboard WHERE name=?", [name])
end

# create_bboard(db, 'Joe', 'light board training', 2)
# create_bboard(db, 'Jim', 'sweep stage', 5)
# update_bboard(db, 'Joe', 'pick up papers', 4)
# delete_bboard(db, 'Jim')

def display_board(db)
	bboard = db.execute("SELECT * FROM bboard")
		puts "BULLETIN BOARD"
	bboard.each do |bboard|
	  puts " "
	  puts "Name: #{bboard['name']}"
	  puts "Task: #{bboard['task']}"
	  puts "Importance: #{bboard['importance']}"
	end
end

puts "Select a command:"
puts "(d) display the board"
puts "(a) add a task"
puts "(r) remove a task"
puts "(u) update a task"
command = gets.chomp

case command
	when "d"
		display_board(db)
	when "a"
		puts "What is the name?"
		add_name = gets.chomp
		puts "What is the task?"
		add_task = gets.chomp
		puts "What is the importance? (1-10)"
		add_importance = gets.chomp.to_i		
		create_bboard(db, add_name, add_task, add_importance)
		display_board(db)
	when "r"
		puts "What is the name to delete?"
		delete_name = gets.chomp
		delete_bboard(db, delete_name)
		display_board(db)
	when "u"
		puts "What is the name you would like to update?"
		update_name = gets.chomp
		puts "What is the updated task?"
		update_task = gets.chomp
		puts "What is the importance of the task?"
		update_importance = gets.chomp
		update_bboard(db, update_name, update_task, update_importance)
		display_board(db)
	else
		display_board(db)
end

