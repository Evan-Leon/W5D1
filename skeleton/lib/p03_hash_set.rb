class HashSet
  attr_accessor :count, :store, :num_buckets

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
    @num_buckets = num_buckets
  end

  def insert(key)
    if count + 1 == @num_buckets
      resize!
    end  

    # if !@store.include?(key) 
    #   @store[key.hash % num_buckets] << key
     
    #   @count += 1
    # end

    if @store.include?([key])
      return false 
    else 
      @store[key.hash % num_buckets] = [key] 
      @count += 1
      return true 
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
    if self.include?(key)
      @store[key.hash % num_buckets].delete(key)
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

    oldstore = @store 
    new_store = Array.new(@num_buckets) { Array.new }
    @store = oldstore.concat(new_store)
  
      
    
  end
end
