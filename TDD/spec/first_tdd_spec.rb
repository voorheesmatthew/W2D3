require 'first_tdd'

RSpec.describe Array do
  describe "#my_uniq" do
    subject(:arr) {[1,2,3,4,4,5]}
    it "gets called onto an array" do
      expect{arr.my_uniq}.to_not raise_error
    end
    
    it "returns a new array with no duplicates" do 
      expect(arr.my_uniq).to eq([1, 2, 3, 4, 5])
    end 
  end
  
  describe "#two_sum" do 
    subject(:arr) {[-1, 0, 2, -2, 1]}
    it "returns indexes of #two_sum to zero pairs" do 
      expect(arr.two_sum).to contain_exactly([0, 4], [2, 3])
    end 
    
    it "doesn't return sums of numbers twice" do 
      expect(arr.two_sum).to_not include([4, 0], [3, 2])
    end 
    
    it "doesn't duplicate amount of individual number" do
      expect(arr.two_sum).to_not include([1, 1])
    end 
  end 
end

describe "my_transpose" do 
  it "transposes any square sized array" do
    expect(my_transpose([[0, 1, 2],[3, 4, 5], [6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
  end
  
  it "raises an error if argument is not an array" do
    expect{my_transpose("lorem")}.to raise_error(ArgumentError)
  end
  
  it "raises an error if argument is not a two dimentional array" do
    expect{my_transpose([1,2,3])}.to raise_error(ArgumentError)
  end
end 

describe "stock_picker" do 
  subject(:days) {stock_picker([99, 1, 2, 4, 10, 6])}
  it "takes an array of integers" do 
    expect{days}.to_not raise_error
  end 
  
  it "raises an error unless argument is an array" do 
    expect{stock_picker("lorem ipsum")}.to raise_error(ArgumentError)
  end 
  
  it "find the most profitable pair of days to buy and sell" do 
    expect(days).to eq([1, 4])
  end 
  
  it "finds a buy date before a sell date" do 
    expect(days).to_not include(0)
  end 
  
  it "should return nil if prices always decrease" do 
    expect(stock_picker([99, 69, 36, 2])).to be_nil
  end 
end 