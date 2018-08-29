require "byebug"


class Array
  def my_uniq
    new_arr = []
    self.each do |el|
      new_arr << el unless new_arr.include?(el)
    end
    new_arr
  end 
  
  def two_sum 
    pairs = [] 
    self.each_index do |i|
      self.each_index do |j|
        next if i >= j
        pairs << [i, j] if self[i] + self[j] == 0
      end 
    end 
    pairs
  end 
end

def my_transpose(arr)
  raise ArgumentError unless arr.is_a?(Array)
  raise ArgumentError if arr.flatten == arr 
  length = arr.count
  new_arr = Array.new(length) {Array.new(length)}
  
  arr.each_with_index do |sub_arr, i|
    sub_arr.each_with_index do |el, j|
      new_arr[j][i] = el 
    end
  end
  new_arr
end

def stock_picker(arr)
  raise ArgumentError unless arr.is_a?(Array)
  new_arr = []
  buy_i = nil 
  sell_i = nil 
  diff = -1.0/0.0
  arr.each_with_index do |buy_price, i|
    arr.each_with_index do |sell_price, j|
      next if i >= j
      checking_diff = sell_price - buy_price
      if checking_diff > diff 
        diff = checking_diff
        buy_i = i 
        sell_i = j 
      end
    end
  end
  return nil if diff <= 0
  [buy_i, sell_i]
end 