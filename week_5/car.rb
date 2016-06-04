class Car

	def initialize name
		@fuel = 10
		@distance = 0
		@name = name
		@mpg = @fuel * 20
		@money = 10
		puts "You have #{@fuel} gallons of gas and have driven #{@distance} miles."
	end

	def drive miles
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			puts "I just drove #{@distance} miles."
			puts "I have #{@fuel -= miles/20.0} miles of gas left in my tank."
		else 
			@distance += @fuel * 20.0
			@fuel = 0
			puts "You're out of gas!"
		end
	end

	def fuel_up 
		remaining_fuel = @fuel
		puts "You have $#{@money}. Gas costs $3.50/gallon.  How many gallons to you want to buy?"
		gas_to_buy = gets.chomp.to_i
		gas_to_buy

	end
end


	car1 = Car.new("BMW")
	car1.drive(30)
	


	# you get 20 mpg
	# it's $3.50/gallon
	# can't drive if you're out of gas
