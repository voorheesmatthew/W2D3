require 'hand.rb'

RSpec.describe Hand do
  subject(:hand) {Hand.new("Matt")}
  describe "#initialize" do
    it "an empty array of cards" do
      expect(hand.cards).to be_empty
    end
    it "receives an owner" do
      expect(hand.owner).to eq("Matt")
    end
  end
  
  describe "#receive_card(deck)" do
    let(:card) {double ("card")}
    let(:deck) {double ("deck")}
    it "deals a card to @cards" do
      expect(deck).to receive(:deal!).and_return(card)
      hand.receive_card(deck)
      expect(hand.cards).to eq([card])
    end
    
    it "register self as card owner" do 
      expect(card).to receive(:register_owner).with(hand.owner)
      hand.receive_card(deck)
    end 
  end
  
  
  
  
end