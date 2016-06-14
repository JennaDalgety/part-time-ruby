# use array = []
#     for i in array
#        puts i
#     end

teams = [ "Arsenal", "Chelsea", "Manchester United", "Manchester
 City", "Bournemouth", "Leicester", "Watford", "Tottenham", 
 "Southampton", "West Ham", "Liverpool", "Stoke", "Everton", 
 "Swansea", "West Brom", "Crystal Palace", "Sunderland", "Newcastle",
  "Norwich", "Aston Villa" ]


class Table
  attr_reader :team, :points

  def initialize(team, points)
    @team = team
    @points = points
    puts "Welcome to the League Table Calculator!"
    check_input
  end

  def check_input
    loop do
      puts "Would you like to (I)nput a score, (V)iew the current table or (Q)uit?"
      @input = gets.chomp.upcase
        if @input == "I"
          puts "What was the first team that played?"
          @team = gets.chomp.upcase
          puts "How many points did they score?"
          @points = gets.chomp.to_i
          puts "What was the second team that played?"
          @team = gets.chomp.upcase
          puts "How many points did they score?"
          @points = gets.chomp.to_i
        end
        if @input == "V"
          puts
        end
        if @input == "Q"
          abort
        end
      end
    end
  end


table1 = Table.new(@team, @points)