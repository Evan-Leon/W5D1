class HashSet
  attr_accessor :count, :store

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    if count + 1 == @num_buckets
      resize!
    end
    hashKey = key.hash % num_buckets

    if !@store.include?(key) 
      @store[key.hash % num_buckets] << key
     
       @count += 1
    end
    

  end

  def include?(key)
    if key == []
      @store.include?(key)
    else  
      @store.include?([key])
    end
  end

  def remove(key)
    if @store.include?(key)
      @store.delete(key)
      @count -= 1
    end
    
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
