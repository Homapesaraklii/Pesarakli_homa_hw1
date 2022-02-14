# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum_n = 0
  arr_len = arr.size
  if arr_len == 0
    return 0
  end
  arr.each do |i|
    sum_n += i
  end
  return sum_n
end


def max_2_sum arr
  # YOUR CODE HERE
 sum_max = 0
 arr_len = arr.size
 if arr_len == 0
   return 0
 end
 
 if arr_len == 1 
   return arr [0]
 end
 arr_sort = arr.sort
 for i in 1..2
   sum_max += arr_sort [arr_len-i]
 end
 return sum_max
end


def sum_to_n? arr, n
  # YOUR CODE HERE
  hash = Hash.new(0)
  arr.each do |i|
    if hash.key? i
      return true
    else
      hash[n-i] = i
    end
  end
  return false
end

# Part 2
def hello(name)
  # YOUR CODE HERE
  greet = "Hello, " + name
  return greet
end


def starts_with_consonant? s
  # YOUR CODE HERE
  if !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
      return true
  else
    return false
  end
end


def binary_multiple_of_4? s
  # YOUR __END__DE HERE
  if (s) == "0"
    return true
    elsif /^[01]*(00)$/.match(s) 
      return true
  else
    return false
  end
end

# Part 3

class BookInStock
  # YOUR CODE HERE
   attr :isbn, :price
   
   def isbn= (isbn)
      if isbn == ''
        raise ArgumentError.new("ISBn is empty")
     end
     @isbn = isbn
   end
   
   def price= (price)
     price = price.to_f
     if price <= 0
        raise ArgumentError.new("Price is not valid")
     end
     @price = price
   end
   
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end
  def price_as_string
    format("$%.2f", @price)
  end
end
