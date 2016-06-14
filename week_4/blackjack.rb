class Blackjack

  def initialize(initial_bankroll)
    @bankroll = initial_bankroll
    puts "What is your name?"
    @name = gets.chomp
    puts
    puts "Welcome, #{@name}."
    puts "You have $#{@bankroll}.  How much would you like to wager?"
    @wager_money = gets.chomp.to_i
    puts
    puts "---the dealer deals your hand---"
    player_deal
  end

  def check_input
    loop do
      puts
      puts "You have $#{@bankroll}.  How much would you like to wager?"
      @wager_money = gets.chomp.to_i
      puts
      puts "---the dealer deals your hand---"
      player_deal
    end
  end

  def wager_win
    @bankroll = @bankroll + @wager_money
  end

  def wager_tie
    @bankroll + 0
  end
  
  def wager_lose
    @bankroll = @bankroll - @wager_money
  end
  
  def player_deal
    @player_card1 = rand(1..11)
    @player_card2 = rand(1..11)
    @hand = @player_card1 + @player_card2
    if @hand == 21
      puts
      puts "You have #{@player_card1} and #{@player_card2}."
      puts
      puts "You've got 21!"
      puts
      puts "You win $#{@wager_money}!"
      wager_win
      if @bankroll == 0
        puts "You are out of money.  Goodbye."
          abort
        end
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "Y"
          check_input
        end
        if @input == "N"
          abort
        end
      end         
    if @hand > 21
      puts "You've busted."
      puts
      puts "You lose $#{@wager_money}."
      wager_lose
      if @bankroll == 0
        puts "You are out of money.  Goodbye."
          abort
        end
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "Y"
          check_input
        end
        if @input == "N"
          abort
        end
      end
    if @hand < 21
      puts "You have #{@player_card1} and #{@player_card2}, for a combined #{@hand}."
    end
    dealer_deal
  end
  
  def dealer_deal
    @dealer_card1 = rand(1..11)
    @dealer_card2 = rand(1..11)
    @dealer_hand = @dealer_card1 + @dealer_card2
    puts
    puts "---the dealer deals their hand---"
    puts "The dealer has #{@dealer_card1}."
    puts "Would you like to (H)it or (S)tay?"
    @play_command = gets.chomp.upcase
    player_hit1
  end

  def player_hit1
    if @play_command == "H" && @hand < 21
      @player_card3 = rand(1..11)
      @hand += @player_card3
      puts
      puts "---the dealer deals you a card---"
      puts "You have #{@player_card1}, #{@player_card2} and #{@player_card3}, for a combined #{@hand}."
    end
    if @hand == 21
      puts "You've got 21!"
      puts
      puts "You win $#{@wager_money}!"
      wager_win
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "Y"
          check_input
        end
        if @input == "N"
          abort
        end
      end
    if @hand > 21
      puts "You've busted."
      puts
      puts "You lose $#{@wager_money}."
      wager_lose
      if @bankroll == 0
        puts "You are out of money.  Goodbye."
          abort
        end
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "Y"
          check_input
        end
        if @input == "N"
          abort
        end
      end
    if @play_command == "S"
      dealer_hit1
    end
    dealer_hit1
  end

  def dealer_hit1
    puts
    puts "---the dealer deals themself a card---"
    puts "The dealer has #{@dealer_card1}."
    if @dealer_hand <= 17
      @dealer_card3 = rand(1..11)
      @dealer_hand += @dealer_card3
    end
    if @dealer_hand == 21
      puts "The dealer has #{@dealer_card1}, #{@dealer_card2} and #{@dealer_card3}, for a combined #{@dealer_hand}."
      puts "The dealer has 21!"
      puts
      puts "The dealer wins.  You lose $#{@wager_money}."
      wager_lose
      if @bankroll == 0
        puts "You are out of money.  Goodbye."
          abort
        end
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "Y"
          check_input
        end
        if @input == "N"
          abort
        end
      end
    if @dealer_hand > 21
      puts "The dealer has #{@dealer_card1}, #{@dealer_card2} and #{@dealer_card3}, for a combined #{@dealer_hand}."
      puts "The dealer busts."
      puts
      puts "You win $#{@wager_money}!"
      wager_win
      if @bankroll == 0
        puts "You are out of money.  Goodbye."
          abort
        end
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "Y"
          check_input
        end
        if @input == "N"
          abort
        end
      end
    puts "Would you like to (H)it or (S)tay?"
    @play_command = gets.chomp.upcase
    player_hit2
  end

  def player_hit2
    if @play_command == "H" && @hand < 21
      @player_card4 = rand(1..11)
      @hand += @player_card4
      puts
      puts "---the dealer deals you a card---"
      puts "You have #{@player_card1}, #{@player_card2}, #{@player_card3} and #{@player_card4}, for a combined #{@hand}."
    end
    if @hand == 21
      puts "You've got 21!"
      puts "You win $#{@wager_money}!"
      wager_win
      if @bankroll == 0
        puts "You are out of money.  Goodbye."
          abort
        end
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "Y"
          check_input
        end
        if @input == "N"
          abort
        end
      end
    if @hand > 21
      puts "You've busted."
      puts "You lose $#{@wager_money}."
      wager_lose
      if @bankroll == 0
        puts "You are out of money.  Goodbye."
          abort
        end
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "Y"
          check_input
        end
        if @input == "N"
          abort
        end
      end
    if @play_command == "S"
      dealer_hit2
    end
    dealer_hit2
  end

  def dealer_hit2
    puts
    puts "---the dealer deals themself another card---"
    puts "The dealer has #{@dealer_card1}."
    if @dealer_hand <= 17
      @dealer_card4 = rand(1..11)
      @dealer_hand += @dealer_card4
    end
    if @dealer_hand == 21
      puts "The dealer has #{@dealer_card1}, #{@dealer_card2}, #{@dealer_card3} and #{@dealer_card4} for a combined #{@dealer_hand}."
      puts
      puts "The dealer has 21!"
      puts
      puts "The dealer wins!"
      puts "You lose $#{@wager_money}."
      wager_lose
      if @bankroll == 0
        puts "You are out of money.  Goodbye."
          abort
        end
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "Y"
          check_input
        end
        if @input == "N"
          abort
        end
      end
    if @dealer_hand > 21
      puts "The dealer has #{@dealer_card1}, #{@dealer_card2}, #{@dealer_card3} and #{@dealer_card4} for a combined #{@dealer_hand}."
      puts "The dealer has #{@dealer_hand}."
      puts
      puts "The dealer busts."
      puts "You win $#{@wager_money}!"
      wager_win
      if @bankroll == 0
        puts "You are out of money.  Goodbye."
          abort
        end
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "Y"
          check_input
        end
        if @input == "N"
          abort
        end
      end
    final_total
  end

  def final_total
    if @hand > @dealer_hand
      puts "You have #{@player_card1}, #{@player_card2}, #{@player_card3} and #{@player_card4}, for a combined #{@hand}."
      puts "The dealer has #{@dealer_card1}, #{@dealer_card2}, #{@dealer_card3} and #{@dealer_card4} for a combined #{@dealer_hand}."
      puts
      puts "You have #{@hand} and the dealer has #{@dealer_hand}."
      puts
      puts "You win $#{@wager_money}!"
      wager_win
      if @bankroll == 0
        puts "You are out of money.  Goodbye."
          abort
        end
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "Y"
          check_input
        end
        if @input == "N"
          abort
        end
      end
    if @hand < @dealer_hand
      puts "You have #{@player_card1}, #{@player_card2}, #{@player_card3} and #{@player_card4}, for a combined #{@hand}."
      puts "The dealer has #{@dealer_card1}, #{@dealer_card2}, #{@dealer_card3} and #{@dealer_card4} for a combined #{@dealer_hand}."
      puts
      puts "You have #{@hand} and the dealer has #{@dealer_hand}."
      puts
      puts "The dealer wins."
      puts "You lose $#{@wager_money}."
      wager_lose
      if @bankroll == 0
        puts "You are out of money.  Goodbye."
          abort
        end
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "Y"
          check_input
        end
        if @input == "N"
          abort
        end
      end
    if @hand == @dealer_hand
      puts "You have #{@hand} and the dealer has #{@dealer_hand}."
      puts
      puts "You tied!"
      wager_tie
      if @bankroll == 0
        puts "You are out of money.  Goodbye."
          abort
        end
      puts "Would you like to play again Y/N?"
      @input = gets.chomp.upcase
        if @input == "Y"
          check_input
        end
        if @input == "N"
          abort
        end
      end
    end
  end


game1 = Blackjack.new(100)