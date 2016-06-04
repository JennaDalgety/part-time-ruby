# class Player

#   def initialize(bankroll)
#     puts "What is your name?"
#     @name = gets.chomp
#     puts "Welcome, #{@name}.  You've got $#{bankroll} to start."
#   end
# end

# class Deck 
#   SUITS = %w{ clubs diamonds hearts spades } 
#   RANKS = %w{2345678910JQKA}
#   attr_reader :cards
#   def initialize(n=1) 
#     @cards = [] 
#     SUITS.cycle(n) do |s|
#       RANKS.cycle(1) do |r| @cards << "#{r} of #{s}"
#       end
#     end
#   end 
# end

# new_game = Player.new(100)
# new_deck = Deck.new

class Blackjack

  def initialize(bankroll)
    @wager_win = (bankroll += @wager)
    @wager_lose = (bankroll -= @wager)
  end
    puts "What is your name?"
    @name = gets.chomp
    puts "Welcome, #{@name}.  You've got $#{bankroll} to start."
    loop do
      puts "You have $#{bankroll}.  How much would you like to wager?"
      @wager = gets.chomp.to_i
      player_deal
    end
  end

  def check_input
    if @input.upcase == "Y"
      puts "You have $#{@money}.  How much would you like to wager?"
      @wager = gets.chomp.to_i
      player_deal
    end
    if @input.upcase == "N"
      abort
    end
  end

  def player_deal
    @player_card1 = rand(1..11)
    @player_card2 = rand(1..11)
    @hand = @player_card1 + @player_card2
    if @hand == 21
      puts "You have #{@player_card1} and #{@player_card2}."
      puts "You've got 21!"
      puts "You win!"
      wager_win
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "y"
          check_input
        if @input == "n"
          abort
        end
      end
    end         
    if @hand < 21
      puts "You have #{@player_card1} and #{@player_card2}, for a combined #{@hand}"
    end
    dealer_deal

  def dealer_deal
    @dealer_card1 = rand(1..11)
    @dealer_card2 = rand(1..11)
    @dealer_hand = @dealer_card1 + @dealer_card2
    puts "The dealer has #{@dealer_card1}."
    puts "Would you like to (H)it or (S)tay?"
    @input = gets.chomp.upcase
    player_hit1
  end

  def player_hit1
    if @input == "H" && @hand < 21
      @player_card3 = rand(1..11)
      @hand += @player_card3
      puts "You have #{@player_card1}, #{@player_card2} and #{@player_card3}, for a combined #{@hand}."
    end
    if @hand == 21
      puts "You've got 21!"
      puts "You win!"
      @wager_win
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "y"
          check_input
        if @input == "n"
          abort
        end
      end
    end
    if @hand > 21
      puts "You've busted."
      puts "You lose!"
      @wager_lose
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "y"
          check_input
        if @input == "n"
          abort
        end
      end
    end
    if @input == "S"
      dealer_hit1
    end
    dealer_hit1
  end

  def dealer_hit1
    puts "The dealer has #{@dealer_card1}, #{@dealer_card2} for a combined #{@dealer_hand}."
    if @dealer_hand <= 17
      @dealer_card3 = rand(1..11)
      @dealer_hand += @dealer_card3
      puts "The dealer has #{@dealer_card1}, #{@dealer_card2} and #{@dealer_card3}, for a combined #{@dealer_hand}."
    end
    if @dealer_hand == 21
      puts "The dealer has 21!"
      puts "The dealer wins!"
      @wager_lose
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "y"
          check_input
        if @input == "n"
          abort
        end
      end
    end
    if @dealer_hand > 21
      puts "The dealer has #{@dealer_hand}.  The dealer busts."
      puts "You win!"
      @wager_win
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "y"
          check_input
        if @input == "n"
          abort
        end
      end
    end
    puts "Would you like to (H)it or (S)tay?"
    @input = gets.chomp.upcase
    player_hit2
  end

  def player_hit2
    if @input == "H" && @hand < 21
      @player_card4 = rand(1..11)
      @hand += @player_card4
      puts "You have #{@player_card1}, #{@player_card2}, #{@player_card3} and #{@player_card4}, for a combined #{@hand}."
    end
    if @hand == 21
      puts "You've got 21!"
      puts "You win!"
      @wager_win
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "y"
          check_input
        if @input == "n"
          abort
        end
      end
    end
    if @hand > 21
      puts "You've busted."
      puts "You lose!"
      @wager_lose
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "y"
          check_input
        if @input == "n"
          abort
        end
      end
    end
    if @input == "S"
      dealer_hit2
    end
    dealer_hit2
  end

  def dealer_hit2
    puts "The dealer has #{@dealer_card1}, #{@dealer_card2} and #{@dealer_card3} for a combined #{@dealer_hand}."
    if @dealer_hand <= 17
      @dealer_card4 = rand(1..11)
      @dealer_hand += @dealer_card4
      puts "The dealer has #{@dealer_card1}, #{@dealer_card2}, #{@dealer_card3} and #{@dealer_card4} for a combined #{@dealer_hand}."
    end
    if @dealer_hand == 21
      puts "The dealer has 21!"
      puts "The dealer wins!"
      @wager_lose
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "y"
          check_input
        if @input == "n"
          abort
        end
      end
    end
    if @dealer_hand > 21
      puts "The dealer has #{@dealer_hand}.  The dealer busts.  You win!"
      @wager_win
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "y"
          check_input
        if @input == "n"
          abort
        end
      end
    end
    final_total
  end

  def final_total
    if @hand > @dealer_hand
      puts "You have #{@hand} and the dealer has #{@dealer_hand}."
      puts "You win!"
      @wager_win
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "y"
          check_input
        if @input == "n"
          abort
        end
      end
    end
    if @hand < @dealer_hand
      puts "You have #{@hand} and the dealer has #{@dealer_hand}."
      puts "You lose!"
      @wager_lose
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "y"
          check_input
        if @input == "n"
          abort
        end
      end
    end
    if @hand == @dealer_hand
      puts "You have #{@hand} and the dealer has #{@dealer_hand}."
      puts "You tied!"
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "y"
          check_input
        if @input == "n"
          abort
        end
      end
    end
  end
end

game1 = Blackjack.new(100)


# on future player hits, build in the check to see if they bust
# also do that for dealer, they can loop/while/unless hit until they're over 17
# dealer bust
# compare total dealer hand and total player hand and spit out a message
# to let the player know who won.
# build STAY function
# loop player hit until they 
