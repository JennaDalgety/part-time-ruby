#Write a program that prints out the complete lyrics to 
#“99 bottles of beer on the wall.”

def ninety_nine_bottles

  num_bottles = 99

  while num_bottles > 0
    puts "#{num_bottles} bottles of beer on the wall"
    puts "#{num_bottles} bottles of beer"
    puts "You take one down and pass it around"
    num_bottles -= 1
    puts "#{num_bottles} bottles of beer on the wall!"
    puts
  end
  if num_bottles == 0
    puts "You drank this bar dry!"
  end
end

ninety_nine_bottles