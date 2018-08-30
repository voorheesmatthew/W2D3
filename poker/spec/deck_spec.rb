require 'deck'

RSpec.describe Deck do
  subject(:deck) {Deck.new}
  
  describe "#initialize" do
    it "intializes with 52 unique cards" do
      expect(deck.cards.uniq.count).to eq(52)
    end
  end
  
  describe "#shuffle!" do
    it "shuffles the deck" do
      unshuffled = deck.cards.dup
      deck.shuffle! 
      expect(deck.cards).to_not eq(unshuffled)
    end
  end
  
  describe "#deal!" do
    before(:each) do 
      deck.shuffle!
    end
    it "returns the last card" do 
      last_card = deck.cards.last 
      expect(deck.deal!).to eq(last_card)
    end 
    
    it "removes the last card from deck" do 
      last_card = deck.cards.last 
      deck.deal!
      expect(deck.cards).to_not include(last_card)
    end
  end
end