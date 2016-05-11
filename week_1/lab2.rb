#Create a method that asks for a user input and converts it to fahrenheit. 
#Or vice versa.

def temperature_convert
  puts "Please input a temperature, in farenheit."
  temp = gets.chomp.to_i
  celsius = ((temp - 32)/1.8).round
  puts "That is #{celsius} in celsius!"
end

temperature_convert