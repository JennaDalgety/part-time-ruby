# INSTANCE METHODS
# class Person

#   def say_hello
#     puts "Hello"
#   end

#   def say_input
#     puts "What do you want me to say?"
#     input = gets.chomp
#     puts "Okay. #{input}"
#   end

#   def say_this(input)
#     puts input
#   end

# end

# joe = Person.new

# puts joe #will show the weird #<Personiuhr3wiugh3ou3htpy89>
# puts joe.say_hello
# puts joe.say_input
# puts joe.say_this("Hey there!!!!!")

# INITIALIZER
# class Person

#   def initialize
#     puts "I do this when you create a new instance of me."
#   end
# end

# john = Person.new
# jenna = Person.new
# sam = Person.new
# joe = Person.new


# class Person

# #   def initialize(name)
# #     puts "You just created #{name}."
# #   end

# # end

# # person1 = Person.new("John")

# # INSTANCE VARIABLES
# class Person

#   def initialize(name)
#     @name = name
#   end

#   def say_hello
#     puts "Hey, #{@name}!"
#   end

#   def introduce_self
#     puts "Hi, my name is #{@name}."
#   end
# end

# nancy = Person.new("Nancy")
# nancy.introduce_self
# nancy.say_hello


# class Person

#   def initialize(name, dob, location)
#     @name = name
#     @dob =  dob
#     @location= location
#   end

#   def say_name
#     puts "Hi, my name is #{@name}."
#   end

#   def say_dob
#     puts "I was born in #{@dob}."
#   end

#   def say_location
#     puts "I live in #{@location}."
#   end

# end

# person1 = Person.new("Jenna", "February", "Chicago")
# person1.say_name
# # person1.say_dob
# person1.say_location


# # GETTERS
# class Person

#   def initialize(name)
#     @name = name
#   end

#   def name
#     @name
#   end

# end

# person = Person.new("Nancy")
# puts person.name


#SETTERS
# class Person

#   def name
#     @name
#   end

#   def name=(name)
#     @name = name
#   end

# end

# person = Person.new
# puts person.name

# person.name = "Nancy"
# puts person.name