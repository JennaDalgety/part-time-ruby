# class BarGame

#   def check_age
#     puts "What is your age?"
#     @age = gets.chomp.to_i
#     if @age >21
#       puts "You can come in!"
#     else
#       puts "You're too young, kid."
#     end
#   end

#   def say_age
#     puts "You are #{@age}!"
#   end

# end

# joe = BarGame.new
# joe.check_age
# joe.say_age


# class BarGame

#   def check_age age
#     @age = age
#     if @age > 21
#       puts "You can come in."
#     else
#       puts "You're too you, kid."
#     end
#   end


# class Person

#   attr_accessor :name #Attr_accessor will call both the reader and writer method

#   def initialize(name)
#     @name = name
#   end
# end

# person1 = Person.new("Jenna") #sets the instance
# puts person1.name #getter method
# person1.name = "Joe" #setter method
# puts person1.name #getter method


#INHERITANCE!

# class Sport
#   def begin_game
#     puts "Game on!"
#   end

#   def end_game
#     puts "Game over!"
#   end

#   def timeout
#     puts "Timeout!"
#   end
# end

# class Soccer < Sport
#   def shoot_ball
#     puts "They shoot!"
#   end

#   def goal
#     puts "GOOOOOOAAAAAALLLLL!"
#   end

#   def tackle
#     puts "Ow!  My ankle!"
#   end
# end

# class Basketball < Sport
#   def layup
#     puts "Curry with the layup!"
#   end

#   def foul
#     puts "Team foul!"
#   end

#   def beat_lebron
#     puts "LeBron is crying again.  What a baby."
#   end
# end

# sport1 = Sport.new
# sport1.begin_game
# sport1.end_game
# sport1.timeout

# barca = Soccer.new
# barca.begin_game
# barca.end_game
# barca.timeout
# barca.shoot_ball
# barca.goal
# barca.tackle

# bulls = Basketball.new
# bulls.begin_game
# bulls.end_game
# bulls.timeout
# bulls.layup
# bulls.foul
# bulls.beat_lebron

# #SELF

# class Person
#   attr_accessor :name

#   def shout_name
#     name.upcase
#   end
# end

# person = Person.new
# person.name = "Joe"

# puts person.name
# puts person.shout_name

# class SUV

#   attr_accessor :model

#   def shout_model_name
#     model.upcase.reverse
#   end
# end

# suv1 = SUV.new
# suv1.model = "Moonroof"

# puts suv1.shout_model_name

# CLASS METHODS

# class Person
#   def self.say_hello # need the self. in this case and it will be used throughout and with any example of the class
#     puts "hello"
#   end
# end

# Person.say_hello

# CLASS VARIABLES

# class Person
#   @@person_count = 0
  
#   def initialize
#     @@person_count += 1
#   end
  
#   def self.counts
#     @@person_count
#   end
# end

# Person.new
# Person.new
# 1000.times { Person.new }
# puts Person.counts


# PRIVATE METHODS

# class Person

#   def say_word(word)
#     puts "#{word}"
#   end
  
#   def say_secret_word
#     puts secret_word
#   end
  
#   private

#     def secret_word
#       puts "this is a secret word."
#     end

# end

# person = Person.new
# # person.say_word("hello")
# # puts person.secret_word
# person.say_secret_word