require './mammal'
require './feline'

class Cat
  include Mammal
  include Feline

  def scratch
    puts "I got you!"
  end
end

cat = Cat.new
cat.scratch
cat.breathe_air
cat.purr