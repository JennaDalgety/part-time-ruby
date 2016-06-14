class Deck
  
 def create_a_deck
    new_suits = %w(hearts spades clubs diamonds )
    new_value = %w(Ace 2 3 4 5 6 7 8 9 10 Jack Queen King)
    @new_deck = Array.new
    #creates a new array by combining the information in the
    #above two
    new_value.each do |card|
      new_suits.each do |suited|
        @new_deck << "#{card} of #{suited}"
      end
    end
  end
  def shuffle_deck
    @new_deck = @new_deck.shuffle
  end
  def deal_a_card new_deck=@new_deck
    dealt_card = @new_deck.pop
    dealt_card
  end