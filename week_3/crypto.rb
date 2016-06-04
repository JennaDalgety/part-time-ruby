ALPHABET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

ENCODING = "cSAGdasphFYI4KU31QzyxeTmWM9bNZB7rRkuwj5LOJg0vqHnofP68iDE2CVlXt"

#can do ALPHABET.split('').shuffle.join for a totally randomized thing
#.split will put everything on a separate line
#('') will split each character
#(' ') will split each character at the white space, or the space between words/letters/etc.
#.shuffle will shuffle all the items in the string
#.join will put them all back together back on one line
#puts ENCODING

  def encode(text)
    puts text.tr(ALPHABET, ENCODING)
    #.tr does this: "hello".tr('aeiou', '*') #=> "h*ll*"
  end

  def decode(text)
    puts text.tr(ENCODING, ALPHABET)
  end

def greeter
  puts "Would you like to encrypt or decrypt a message?"
  input = gets.chomp.downcase
  if input == "encrypt"
    puts "Please enter the message you would like to encrypt."
    encrypt_message = gets.chomp

    encode(encrypt_message)

  elsif input == "decrypt"
    puts "Please enter the message you would like to decrypt"
    decrypt_message = gets.chomp

    decode(decrypt_message)

  else
    greeter
  end
end

greeter


