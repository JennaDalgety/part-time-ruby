#Write a mad lib program. Users are prompted for verbs, nouns, 
#and adjectives and then it should output a paragraph using those words.

def mad_lib
  puts "Welcome to my Mad Lib! Let's get stupid."
  puts "Please enter a noun."
  noun1 = gets.chomp
  puts "Please enter a verb (past tense)."
  verb1 = gets.chomp
  puts "Please enter an adjective."
  adjective1 = gets.chomp
  puts "Okay! That's a good start, but to make this truly stupid, let's get one more round of input!"
  puts "Please enter another noun."
  noun2 = gets.chomp
  puts "Please enter another verb (past tense)."
  verb2 = gets.chomp
  puts "Please enter another adjective."
  adjective2 = gets.chomp
  puts "All right! Here's your paragraph:"
  puts "#{noun1} and #{noun2} went up the hill to fetch a pail of #{adjective1} water.  #{noun1} #{verb1} and #{verb2} their #{adjective2} crown and #{noun2} left that clumsy idiot at the bottom of that hill."
end

mad_lib