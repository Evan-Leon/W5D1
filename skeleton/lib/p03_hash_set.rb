class HashSet
  attr_reader :count, :store

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)

    # if count + 1 == @num_buckets
    #   resize!


    # end
    hashKey = key.hash % num_buckets

    if !@store.include?(key) 
      @store[key.hash % num_buckets] << key
      @count += 1
      
    end

  end

  def include?(key)
    @store.include?([key])
  end

  def remove(key)
    @count -= 1
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
