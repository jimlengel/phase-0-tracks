# Release 5

def encrypt (str)
  counter = 0
  length = str.length
  while counter < length
     str[counter].next[0]
     result = str[counter].next[0]
     print result
     counter += 1
  end
  
end

def decrypt (string)
    count = 0
  string_length = string.length
  while count < string_length
     alphabet="abcdefghijklmnopqrstuvwxyz"
     alph_index = alphabet.index(string[count])
     alph_index_new = alph_index - 1
     alph_index_new
     print alphabet[alph_index_new]
     #alphabet[alph_index_new]
     count += 1
  end
end

# ask if they want to encrypt or decrypt a password
# ask user for password
# if user chooses encrypt,
#   1. find the length of the string
#   2. loop through the number of times that there are characters
#   3. for each letter in the string, advance the index by one
#   4. after all of the letters have been advanced by one, return new string
# if user chooses decrypt,
#   1. find the index for each letter
#   2. subtract one from each index
#   3. find the letter that represents that index 
#   4. loop through the number of times that there are characters
#   5. after all of the letters have been evaluated, return new string

puts "Secret Agent, would you like to encrypt or decrypt a password? (e/d)"
password_preference = gets.chomp

puts "Please enter your password."
password = gets.chomp

if password_preference == "e"
  encrypt(password)
elsif password_preference == "d"
  decrypt(password)
else
  puts "Please enter e for encrypt or d for decrypt."
end


