# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  
  if arr.length() == 0
    #empty block
  else
    i = 0
    while i < arr.length()
      total = total + arr[i]
      i = i + 1
    end
  end
  
  total
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.length() == 0
  elsif arr.length() == 1
    sum = arr[0]
  else
    i = 0
    sum = arr.sort[-1] + arr.sort[-2]
  end
  
  sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  bool = false
  i = 0
  j = 0
  
  while i != arr.length()
    j = 0
    while j != arr.length()
      if arr[i] + arr[j] == n and i != j
        bool = true
      end
      j = j + 1
    end
    i = i + 1
  end
  
  bool
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return_string = 'Hello, ' + name
  return_string
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return_value = false
  if s.length() !=0 and s[0].match? /[b-df-hj-nq-tv-zB-DF-HJ-NQ-TV-Z]/
    return_value = true
  end
  return_value
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return_value = false
  if s.length() > 0 and !s.match? /[^01]/ and s.match? /.+00$/ or s == "0"
    return_value = true
  end
  return_value
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError if isbn.length() == 0
    raise ArgumentError if price <= 0
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end
    
  def price
    @price
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string 
    string_price = "$"+ @price.to_s
    if !string_price.match? /[\.]/
      string_price = string_price+".00"
    elsif string_price.match? /\d*\.\d$/
      string_price = string_price + "0"
    end
    string_price
  end
end