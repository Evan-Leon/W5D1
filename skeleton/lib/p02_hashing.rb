class Integer
  # Integer#hash already implemented for you
end

class Array
  
  def hash
        new_hash = 0

    self.each_with_index do |num, i|
      new_hash += num.hash + i.hash 
    end
    # new_hash += self.hash

    # if new_hash[self] != 1 
    #   new_hash[self]
    # else  
    #   new_hash[self]
    # end    
    # new_hash.hash

    new_hash
  end
end

class String
  def hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
