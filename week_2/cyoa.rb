def cyoa

  puts "You’re a traveler on a long journey." 
  puts "After many miles, you come to a fork in the road." 
  puts "To the North is a small village.  To the East is dark cave." 
  puts "Which way do you go? North or East?"
  direction = gets.chomp.capitalize
  if direction == "North"
    puts "You head North to the small village." 
    puts "On the way you come across a hidden pitfall."
    puts "At the bottom are dozens of makeshift pikes.  You fall onto them and die."
  elsif direction == "East"
    puts "You head East towards the cave."
    puts "In the cave you discover One-Eyed Willy's pirate ship laden with treasure."  
    puts "You leave Willy's share, but take the rest and save the town from greedy investors."
  else
    puts "Error.  Please enter either North or East."
  end
end

cyoa