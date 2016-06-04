# true || true = true
# true || false = true
# false || true = false
# true && false = false
# true && true = true

# array = [1, 2, 3, 4, 5]
# array.each do |x|
#   puts x * 10
# end

# hash = { "first_name" => "Bobby", "last_name" => "Lee" }
# hash.each do |key, value|
#   puts "My #{key} is #{value}."
# end

# 10.times { puts "Hello" }
# same as
# 10.times do
#   puts "Hello"
# end

# ITERATORS
# numbers = [1,2,3,4,5,6,7,8,9]

# numbers.select do |num|
#   puts num.even?
# end

# numbers.select do |num|
#   puts num.odd?
# end

# ENUMBERABLES
# numbers = [0, 5, 2, 9, 7, 6, 8, 3, 1, 4]

# puts numbers.sort

# puts numbers.inject(:+)

# puts numbers.find { |number| number == 1 }

# puts numbers.count

# puts numbers.max

# RANGES
# # 1..5 includes 5
# 1...5 which excludes 5
# puts Range.new(1, 5)

# (1..10).each do |number|
#   puts number
# end

# ['a', 'b'].each do |letter|
#   hangout = letter + ' bar'
#   puts hangout
# end

# [1, 2].each do |num|
#   calc = num * 100
#   puts calc
# end

# array = (1..100).to_a
# puts array

