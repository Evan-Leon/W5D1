class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    new_hash = Hash.new(1)
    if new_hash[self] != 1 
      new_hash[self]
    else  
      new_hash[self]
    end
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
