#Exercise11. Write a Ruby program that, when given an array: collection = [12, 23, 456, 123, 4579] prints each number, 
#and tells you whether it is odd or even.

def odd_or_even(collection)

  collection.each do |x|
   x % 2 == 0 ? (puts "the number '#{x}' is even") : (puts "the number '#{x}' is odd")
  end

end

collection = [12, 23, 456, 123, 4579]
odd_or_even(collection)

