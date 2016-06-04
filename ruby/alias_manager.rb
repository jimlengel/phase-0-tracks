# write a method that takes a spy's real name 
# (e.g., "Felicia Torres") and creates a fake name with it 
# by doing the following:

# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to 
# the next vowel in 'aeiou', and all of the consonants 
# (everything else besides the vowels) to the next consonant 
# in the alphabet. So 'a' would become 'e', 'u' would 
# become 'a', and 'd' would become 'f'.

spy_name = ""
spy_name_list = {}
while spy_name != "quit"
	puts "What name would you like to convert into a spy name? (type 'quit' to end)"
	spy_name = gets.chomp

	#spy_name = "Felicia Torres"

	# put the name all in lowercase
	spy_name = spy_name.downcase

	# split the two names into an array
	spy_name_array = spy_name.split(' ')

	# split the two names into two arrays with one letter for each value
	last_array = spy_name_array.last.split('')
	first_array = spy_name_array.first.split('')

	# advance a letter by one, as indicated above
	def next_letter (x)
		case
		when x == 'a'
			x = 'e'
		when x == 'e'
			x = 'i'
		when x == 'i'
			x = "o"
		when x == 'o'
			x = 'u'
		when x == 'u'
			x = 'a'
		else
			if x == 'z'
				x = 'a'
			elsif x.next == 'a' || x.next == 'e' || x.next == 'i' || x.next == 'o' || x.next == 'u'
				x.next.next
			else
				x.next
			end
		end
	end

	# call the method once for each letter
	last_array.map! {|x| next_letter(x) }
	first_array.map! {|x| next_letter(x) }

	# rejoin the new array into a string and capitalizes the first letter
	first_name_join = first_array.join('').capitalize
	last_name_join = last_array.join('').capitalize


	new_name = last_name_join + ' ' + first_name_join
	if new_name == "Raov Raov"
		puts "Thanks for playing."
	else
		puts "The spy name is: #{new_name}."
		spy_name_list.store(spy_name, new_name)
	end

	

end

spy_name_list.each {|key,value| puts "#{key} is also known as #{value}."}




