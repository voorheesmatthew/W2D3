class Game 
  attr_reader :name, :towers
  
  def initialize(name)
    @name = name
    @towers = Array.new(3) {Array.new}
  end
  
  def populate 
    @towers = [[3,2,1],[],[]]
  end
  
  
end

class Display
  def self.render(towers)
    towers.transpose.each do |level|
      puts level
    end 
  end
  nil
end