def deaf_grandma

	count = 0

	puts "HELLO THERE, SONNY!  HOW ARE YOU TODAY?!"
	loop do
		response = gets.chomp
		if response == ("BYE")
			count += 1
			break if count == 3
		elsif response == response.upcase
			puts "NO, NOT SINCE #{rand(1930...1980)}!"
			count = 0
		else
			puts "HUH?!  SPEAK UP, SONNY!"
			count = 0
		end
	end
end

deaf_grandma