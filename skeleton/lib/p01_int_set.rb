class MaxIntSet
  attr_accessor :max, :store
  def initialize(max)
    @max = max
    @store = Array.new(max)
  end


  # it "values in the store should be booleans corresponding to presence" do
  #   set.insert(1)
  #   expect(set.store[1]).to be true
  def insert(num)
    raise 'Out of bounds' if num > max || num < 0 
    # return true if @store[0] != nil  
    if num < max 
      @store[num] = true
      return true
    end
  end

  def remove(num)
    @store[num] = nil
  end

  def include?(num)
    @store[num]
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end
require "byebug"

class IntSet


  attr_accessor :num_buckets

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @num_buckets = num_buckets
  end

  def insert(num)
    # debugger
    idx = num % num_buckets
    @store[idx] << num
    # debugger
  end

  def remove(num)
  end

  def include?(num)
    # debugger
    return false if @store[num % num_buckets].include?(num)
    true
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
