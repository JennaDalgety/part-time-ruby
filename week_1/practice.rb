def greeter
  puts "What is your name?"
  name = gets.chomp
  puts "Hey, #{name}!"
  puts "Where are you from?"
  location = gets.chomp

end

greeter


#assignment

def age_game
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "Damn! You're #{age}!"
end

age_game