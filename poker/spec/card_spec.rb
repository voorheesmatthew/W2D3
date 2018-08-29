require 'card'

RSpec.describe Card do 
  subject(:card) {Card.new(1, :s)}
  describe "#initialize" do 
    it "accepts a value" do
      expect(card.value).to eq(1)
    end
    
    it "accepts a suit" do
      expect(card.suit).to eq(:s)
    end
    # it "raises an error if values is invaid"
    # it "raises an error if suit is invalid"
  end

  describe "#register_owner" do
    let(:player) {double("player")}
    it "takes a player object" do
      expect(player).to receive(:cards).and_return([])
      card.register_owner(player)
      expect(card.owner).to eq(player)
    end
  end
end 