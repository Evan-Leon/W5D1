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
    
    idx = num % num_buckets
    @store[idx] << num
    
  end

  def remove(num)
    @store[num % num_buckets].delete(num)
  end

  def include?(num)
    
    @store[num % num_buckets].include?(num)
    
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
  attr_accessor :store, :num_buckets 
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
    @num_buckets = num_buckets
  end

  def insert(num)

    if count + 1 == @num_buckets
      resize!
    end
    if @store.include?([num])
      return false 
    else 
      @store[num % num_buckets] = [num] 
      @count += 1
      return true 
    end
     
  end

  def remove(num)
    if @store.include?([num])
      @store.delete([num])
      @count -= 1
    end 

  end

  def include?(num)
    @store.include?([num])
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    
    @num_buckets *= 2
    oldstore = @store 
    @store = Array.new(@num_buckets) { Array.new }
    
    oldstore.each do |bucket|
      bucket.each do |ele|
        self.insert(ele)
      end
    end
        
  end
end
