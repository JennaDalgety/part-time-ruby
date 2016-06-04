class Car

  def initialize name
    @fuel = 10
    @distance = 0
    @name = name
    # @driving_distance_allotment = @fuel * 20
    @money = 10
    loop do
      puts "You have #{@fuel} gallons of gas and have driven #{@distance} miles."
      puts "What would you like to do? (D)rive / (F)uel up / (Q)uit?"
      @input = gets.chomp.downcase
      check_input
      # break if @input == "q"
    end
  end

  # def check_input
  #   if @input == "d"
  #     puts "How many miles would you like to drive?"
  #     drive_length = gets.chomp.to_i
  #     drive(drive_length)
  #   elsif @input == "f"
  #     puts "You have $#{@money}. Gas costs $3.50/gallon.  How many gallons do you want to buy?"
  #     gas_to_buy = gets.chomp.to_i
  #     fuel_up(gas_to_buy)
  #   end
  # end

  def check_input
    case 
    when @input == "d"
      puts "How many miles would you like to drive?"
      drive_length = gets.chomp.to_i
      drive(drive_length)
    when @input == "f"
      puts "You have $#{@money}. Gas costs $3.50/gallon.  How many gallons do you want to buy?"
      gas_to_buy = gets.chomp.to_i
      fuel_up(gas_to_buy)
    when @input == "q"
      abort #can use break inside of a loop or a block (can't use it inside of a conditional statement), so abort will kill the program 
    end
  end

  def drive miles
    if (@fuel - miles/20.0) >= 0
      @distance += miles
      puts "I just drove #{miles} miles."
      puts "I have #{@fuel -= miles/20.0} miles of gas left in my tank."
    else 
      @distance += @fuel * 20.0
      @fuel = 0
      puts "You're out of gas!"
    end
  end

  def fuel_up gas_to_buy
    if (gas_to_buy * 3.5) >= @money
      puts "You don't have that much money."
    else
      @fuel = gas_to_buy + @fuel
      @money = @money - (gas_to_buy * 3.5)
    end
  end
end


  car1 = Car.new("BMW")


  #to build up:
  # - add a puts that tell the driver how many miles they can possibly drive
  # - do a CYOA for a Mad Max game; swap water for money