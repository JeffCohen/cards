class Deck

  VALUES = ['2','3','4','5','6','7','8','9','T','J','Q','K','A']
  SUITS = ['Clubs', 'Diamonds', 'Hearts', 'Spades']
  
  def initialize
    @cards = []
    VALUES.each do |card_value|
      SUITS.each do |suit|
        @cards << "#{card_value}#{suit[0,1]}".downcase
      end
    end
  end
  
  def shuffle!
    @cards.shuffle!
  end
  
  def deal(number_of_cards)
    @cards.take(number_of_cards)
  end
  
end