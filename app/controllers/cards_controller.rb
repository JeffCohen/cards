class CardsController < ApplicationController

  def index
    deck = Deck.new
    deck.shuffle!
    
    @cards = deck.deal(5)
  end

end
