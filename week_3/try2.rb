def encrypter

puts "Please eter the words/phrase you would like encrypted:"

encryption = []
while true
  input = gets.chomp
  break if input.empty?
  encryption << input
end
puts encryption
end

encrypter