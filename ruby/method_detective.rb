# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

puts "zom".insert(2,"o")
puts "zom".insert(1,"o")
# => “zoom”

puts "enhance".center(15,' ')
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual" << " suspects"
puts "the usual" + " suspects"
#=> "the usual suspects"

puts " suspects".prepend("the usual")
puts " suspects".gsub(" ", "the usual ")
# => "the usual suspects"

puts "The case of the disappearing last letter".chop
puts "The case of the disappearing last letter".chomp("r")
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".slice(1,38)
puts "The mystery of the missing first letter".tr("T","")
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".insert(11," ")
# => "Elementary, my dear Watson!"

puts "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# Each character has an ASCII value. The ASCII value of "z" is 122.


puts "How many times does the letter 'a' appear in this string?".count("a")
# => 4