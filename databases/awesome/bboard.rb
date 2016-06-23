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

# add a row
def create_bboard(db, name, task, importance)
  db.execute("INSERT INTO bboard (name, task, importance) VALUES (?, ?, ?)", [name, task, importance])
end

# update a row
def update_bboard(db, name, task, importance)
  db.execute("UPDATE bboard SET task=? WHERE name=?", [task, name])
  db.execute("UPDATE bboard SET importance=? WHERE name=?", [importance, name])
end

# delete a row
def delete_bboard(db, name)
  db.execute("DELETE FROM bboard WHERE name=?", [name])
end


# call from within the method
def display_the_board(db, name, task, importance)
	bboard.each do |bboard|
	  puts " "
	  puts "Name: #{bboard['name']}"
	  puts "Task: #{bboard['task']}"
	  puts "Importance: #{bboard['importance']}"
	end
end

# display one person
def display_person(db, name)
	  #db.execute("DELETE FROM bboard WHERE name=?", [name])
	bboard = db.execute("SELECT * FROM bboard WHERE name=?", [name])
	bboard.each do |bboard|
	  puts " "
	  puts "Name: #{bboard['name']}"
	  puts "Task: #{bboard['task']}"
	  puts "Importance: #{bboard['importance']}"
	end
end

# display the table
def display_board(db)
	puts "BULLETIN BOARD - - - - - - - - - - "
	bboard = db.execute("SELECT * FROM bboard WHERE importance=10")
	bboard.each do |bboard|
	  puts " "
	  puts "Name: #{bboard['name']}"
	  puts "Task: #{bboard['task']}"
	  puts "Importance: #{bboard['importance']}"
	end

	bboard = db.execute("SELECT * FROM bboard WHERE importance=9")
	bboard.each do |bboard|
	  puts " "
	  puts "Name: #{bboard['name']}"
	  puts "Task: #{bboard['task']}"
	  puts "Importance: #{bboard['importance']}"
	end

	bboard = db.execute("SELECT * FROM bboard WHERE importance=8")
	bboard.each do |bboard|
	  puts " "
	  puts "Name: #{bboard['name']}"
	  puts "Task: #{bboard['task']}"
	  puts "Importance: #{bboard['importance']}"
	end

	bboard = db.execute("SELECT * FROM bboard WHERE importance=7")
	bboard.each do |bboard|
	  puts " "
	  puts "Name: #{bboard['name']}"
	  puts "Task: #{bboard['task']}"
	  puts "Importance: #{bboard['importance']}"
	end

	bboard = db.execute("SELECT * FROM bboard WHERE importance=6")
	bboard.each do |bboard|
	  puts " "
	  puts "Name: #{bboard['name']}"
	  puts "Task: #{bboard['task']}"
	  puts "Importance: #{bboard['importance']}"
	end

	bboard = db.execute("SELECT * FROM bboard WHERE importance=5")
	bboard.each do |bboard|
	  puts " "
	  puts "Name: #{bboard['name']}"
	  puts "Task: #{bboard['task']}"
	  puts "Importance: #{bboard['importance']}"
	end
	
	bboard = db.execute("SELECT * FROM bboard WHERE importance=4")
	bboard.each do |bboard|
	  puts " "
	  puts "Name: #{bboard['name']}"
	  puts "Task: #{bboard['task']}"
	  puts "Importance: #{bboard['importance']}"
	end

	bboard = db.execute("SELECT * FROM bboard WHERE importance=3")
	bboard.each do |bboard|
	  puts " "
	  puts "Name: #{bboard['name']}"
	  puts "Task: #{bboard['task']}"
	  puts "Importance: #{bboard['importance']}"
	end

	bboard = db.execute("SELECT * FROM bboard WHERE importance=2")
	bboard.each do |bboard|
	  puts " "
	  puts "Name: #{bboard['name']}"
	  puts "Task: #{bboard['task']}"
	  puts "Importance: #{bboard['importance']}"
	end

	bboard = db.execute("SELECT * FROM bboard WHERE importance=1")
		bboard.each do |bboard|
	  puts " "
	  puts "Name: #{bboard['name']}"
	  puts "Task: #{bboard['task']}"
	  puts "Importance: #{bboard['importance']}"
	end
end


# ask the user to make a selection (d, a, r, u, q)
command = ""
while command != "q"

	puts " "
	puts "Select a command:"
	puts "(d) display the board"
	puts "(a) add a task"
	puts "(r) remove a task"
	puts "(u) update a task"
	puts "(n) display one person"
	puts "(q) quit"
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
		when "n"
			puts "What is the name to display?"
			display_name = gets.chomp
			display_person(db, display_name)
		else
			display_board(db)
	end

end


