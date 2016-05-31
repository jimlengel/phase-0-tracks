# In phase-0-tracks/ruby/hashes.rb, pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

# Your keys should be symbols unless you find that you need a string for some reason -- usually only when spaces or other "user friendly" formatting are needed (as in the case of using someone's full name as a hash key). Basically, symbols are simpler for programmers to use, and readable enough by technical folks to be used in place of strings most of the time.

# Your program should ...

# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.
# Be sure to pseudocode, and leave your pseudocode in as comments.

# Pseudocode
# 1. Ask the designer for the client information:  the client's name, age, number of children, decor theme, if they pay using a check (true or false)
# 2. Store the information in a hash.
# 3. Display the information on the screen for the designer.
# 4. Ask the user if the designer would like to update the information.
# 5. If yes, prompt the designer for the field name (key), then the new information (value). 
# 5a. Use a method to convert a string to a symbol
# 5b. Print the updated hash.
# 6. Exit the program.

# interior_designer_job = {:salary => 100000, "Must be certified" => true}

# Create a hash for client details

# Prompt the user for information, then populate the hash.

client_details = {}

puts "What is the client's name?"
client_details[:name] = gets.chomp

puts "What is the client's age?"
client_details["age"] = gets.chomp

puts "How many children does the client have?"
client_details["number_of_children"] = gets.chomp

puts "What is the client's decor theme?"
client_details[:decor_theme] = gets.chomp

client_details[:prefer_check] = ""
# Make sure designer enters a 'y' or 'n' for pays by check
  loop do
    puts "Does the client prefer to pay using a check? Please enter 'y' or 'n'"
    client_details[:prefer_check] = gets.chomp
      if client_details[:prefer_check] == "y" || client_details[:prefer_check] == "n"
        break
      end
  end

# Set 'y' to true and 'n' to false for pays by check
if client_details[:prefer_check] == "y"
  client_details[:prefer_check] = true
else
  client_details[:prefer_check] = false
end

puts "CLIENT INFORMATION"
puts "Name: " << client_details[:name]
puts "Age: " << client_details["age"]
puts "Number of children: " << client_details["number_of_children"]
puts "Decor theme: " << client_details[:decor_theme]
# Creates sentence for pays by check.
if client_details[:prefer_check] == true
	puts "Client prefers to pay by check."
else
	puts "Client does not prefer to pay by check."
end

# Prompt user to see if user would like to change a field
puts " "
puts "Would you like to make changes to any field? y/n"
change_fields = gets.chomp
# If the designer wants to changes a field, ask which field and take the new data, then update hash.
if change_fields == 'y'
  puts "Which field would you like to update?"
  puts "name, age, number of children, decor theme, or check"
  update_field = gets.chomp
  puts "What is the new information for that field?"
  new_value = gets.chomp
# Update the hash according to which field was chosen to update.
    case update_field
    when "name"
      client_details[:name] = new_value
    when "age"
      client_details["age"] = new_value
    when "number of children"
      client_details["number_of_children"] = new_value
    when "decor theme"
      client_details[:decor_theme] = new_value
    when "check"
      client_details[:prefer_check] = new_value
      if client_details[:prefer_check] == "y"
        client_details[:prefer_check] = true
      else
        client_details[:prefer_check] = false
      end
    else
      puts "Not a valid option. No changes made."
    end
# Display updated client data.
    puts " "
    puts "CLIENT INFORMATION"
    puts "Name: " << client_details[:name]
    puts "Age: " << client_details["age"]
    puts "Number of children: " << client_details["number_of_children"]
    puts "Decor theme: " << client_details[:decor_theme]
    if client_details[:prefer_check] == true
      puts "Client prefers to pay by check."
    else
      puts "Client does not prefer to pay by check."
    end
# Client does not want to change data; exit program.
else
	puts "The client data has been saved. Goodbye."
end





