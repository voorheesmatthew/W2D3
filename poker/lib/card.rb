class Card
  attr_reader :value, :suit, :owner
  
  def initialize(value, suit)
    @value = value 
    @suit = suit
  end 
  
  def register_owner(player)
    @owner = player 
    player.cards << self
  end
end