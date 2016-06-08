require 'firebase'

base_uri = 'https://radiant-inferno-2184.firebaseio.com/'

firebase = Firebase::Client.new(base_uri)

def ask_me_questions
  puts "What is your name?"
  @name = gets.chomp
  puts "What is your gender?"
  @gender = gets.chomp
  puts "How old are you?"
  @age = gets.chomp.to_i
end

ask_me_questions

response = firebase.push("survey", { :name => "#{@name}", :gender => "#{@gender}", :age => "#{@age}" })
response.success? 
puts response.code 
puts response.body 
puts response.raw_body 