class LeapYear

  def leap_year

    puts "Please enter your starting year."
    start_year = gets.chomp.to_i
    puts "Please enter your ending year."
    end_year = gets.chomp.to_i
      years = (start_year..end_year)
        years.each do |year|
          if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
            puts year
        end
      end
  end
end

x = LeapYear.new
x.leap_year