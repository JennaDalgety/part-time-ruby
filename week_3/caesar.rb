puts "Please enter what you would like to encrypt:"
text = gets.chomp.downcase

def caesar_cipher(text)
  alphabet = ('a'..'z').to_a 
  key = Hash[alphabet.zip(alphabet.rotate(3))]
  text.each_char.inject("") { |newtext, char| newtext + key[char] }
end

puts caesar_cipher(text)