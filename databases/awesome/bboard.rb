# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

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


#10.times do
#  create_bboard(db, Faker::Name.name, 0)
#end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

