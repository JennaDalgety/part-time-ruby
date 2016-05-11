#Write a program that asks for a name and an age. 
#Have it output something like “Bob was born in 1985”

def year
  puts "What is your name?"
  name = gets.chomp
  puts "What is your age?"
  age = gets.chomp.to_i
  year = 2016 - age
  puts"#{name} was born in #{year}."
end

year