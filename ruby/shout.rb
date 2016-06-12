# module Shout

# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end

# end

# # Release 1
# puts Shout.yell_angrily('Crap')
# puts Shout.yelling_happily('Hooray')


module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end

end

class Student
  include Shout
end

class Teacher
  include Shout
end

student = Teacher.new
puts student.yell_angrily('I am so tired of school')

teacher = Teacher.new
puts teacher.yelling_happily('It is almost summer')

