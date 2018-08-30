require_relative "deck"

class Hand
  attr_reader :cards, :owner
  def initialize(owner)
    @owner = owner
    @cards = []
  end
  
  def receive_card(deck)
    card = deck.deal! 
    card.register_owner(@owner)
    @cards << card
  end
end 