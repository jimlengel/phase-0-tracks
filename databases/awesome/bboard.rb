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

create_bboard(db, 'Joe', 'light board training', 2)
create_bboard(db, 'Jim', 'sweep stage', 5)

def update_bboard(db, name, task, importance)
  db.execute("UPDATE bboard SET task=? WHERE name=?", [task, name])
  db.execute("UPDATE bboard SET importance=? WHERE name=?", [importance, name])
end

# update_bboard(db, 'Joe', 'pick up papers', 4)

def delete_bboard(db, name)
  db.execute("DELETE FROM bboard WHERE name=?", [name])
end

delete_bboard(db, 'Jim')

bboard = db.execute("SELECT * FROM bboard")
bboard.each do |bboard|
  puts "Name: #{bboard['name']}"
  puts "Task: #{bboard['task']}"
  puts "Importance: #{bboard['importance']}"
end





