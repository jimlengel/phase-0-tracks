# Release 5

def encrypt (str)
  counter = 0
  length = str.length
  result = ""
  while counter < length
     str[counter].next[0]
     result += str[counter].next[0]
     counter += 1
  end
    return result
end

def decrypt (string)
    count = 0
  string_length = string.length
  result_d = ""
  while count < string_length
     alphabet="abcdefghijklmnopqrstuvwxyz"
     alph_index = alphabet.index(string[count])
     alph_index_new = alph_index - 1
     alph_index_new
     
    # print alphabet[alph_index_new]
    result_d += alphabet[alph_index_new]
     count += 1
  end
    return result_d
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
  enc = encrypt(password)
  puts "Your encrypted word is #{enc}."
elsif password_preference == "d"
  dec = decrypt(password)
  puts "Your decrypted word is #{dec}."
else
  puts "Please enter e for encrypt or d for decrypt."
end

entered = decrypt(encrypt(password))
puts "You entered #{entered}."

# Module 4.6, release 4: decrypt(encrypt("swordfish"))
