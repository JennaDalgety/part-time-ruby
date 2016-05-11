def number_guessing

  number = rand(1...100)
  
  count = 0

  puts "Buckle up!  It's time to play a number guessing game!"
  puts "You have five tries to guess the number."  
  puts "Enter a number between 1 and 100."
  loop do
    guess = gets.chomp.to_i
    count += 1
    if count == 5
      puts "The number was #{number}.  YOU LOSE!"
      break
    else
      unless guess == number
        if guess > number 
          puts "Too high.  You have #{(5-count)} guesses left."
        else
          puts "Too low.  You have #{(5-count)} guesses left." 
        end
      else
        puts "Congrats!  You got it right!"
        break
      end
    end
  end
end

number_guessing