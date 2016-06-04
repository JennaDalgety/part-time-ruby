module SayThings
  def say_hello
    puts "hola"
  end
end

class Person
  include SayThings
end

penelope = Person.new
penelope.say_hello