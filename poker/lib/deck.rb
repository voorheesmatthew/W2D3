require_relative 'card'

class Deck
  attr_reader :cards
  
  def initialize
    @cards = []
    values = (1..13).to_a
    suits = [:s,:d,:c,:h]
    values.each do |value|
      suits.each do |suit|
        @cards << Card.new(value,suit)
      end
    end
  end
  
  
  def shuffle!
    @cards = @cards.shuffle
  end
  
  def deal!
    @cards.pop
  end 
end