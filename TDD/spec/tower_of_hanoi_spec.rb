require 'tower_of_hanoi'

RSpec.describe Game do 
  subject(:game) { Game.new("Tim") }
  describe "#initialize" do 
    it "accepts a player name" do 
      expect(game.name).to eq("Tim")
    end 
    
    it "builds a array of 3 empty arrays as grid" do 
      expect(game.towers).to eq(Array.new(3) { Array.new })
    end 
    
  end
  
  describe "#populate" do
    it "populates the first tower with three disks" do
      game.populate
      expect(game.towers).to eq([[3,2,1],[],[]])
    end
  end
  
  describe "#play" do 
    it "passes @towers to display"
    it "calls #move"
    it "calls #won?"
    it "ends game if #won?"
    
  end
  
  describe "#move"
  
  describe "#won?"
end 

# describe Display do
#   let(:game) {double("game" {towers: [[3,2,1],[],[]]}) }
#   describe "self#render" do
#     it "renders a stack of towers passed in" do
# 
#     end
#   end
# end