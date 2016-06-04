class BankAccount

	attr_reader :money

	def initialize(initial_money)
		@money = initial_money
		loop do
			puts "Would you like to deposit, withdraw or check balance (enter 'quit' to quit)?"
			@input = gets.chomp.downcase
			check_input
			break if @input == "quit"
		end
	end

	def check_input
		if @input == "deposit"
			puts "How much would you like to deposit?"
			deposit_amount = gets.chomp.to_i
			deposit(deposit_amount)
		elsif @input == "withdraw"
			puts "How much would you like to withdraw?"
			withdrawl_amount = gets.chomp.to_i
			withdraw(withdrawl_amount)
		elsif @input == "check balance"
			puts "There is now $" + @money.to_s + " in your account."
		end
	end

	def deposit(deposit_dollars)
		@money = @money + deposit_dollars
		# or can put @money += deposit_dollars
		puts "You've deposited $#{deposit_dollars}."
	end

	def withdraw(withdraw_dollars)
		@money = @money - withdraw_dollars
		# or can put @money -= withdraw_dollars
		puts "You've withdrawn $#{withdraw_dollars}."
	end

	def check_balance(balance)
		@money = @balance
	end

end

new_account = BankAccount.new(0)