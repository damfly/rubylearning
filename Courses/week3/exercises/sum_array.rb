#Exercise10. Write a Ruby program that, when given an array: collection = [1, 2, 3, 4, 5] calculates the sum of its elements.


def sum_array(array_to_sum)
  array_to_sum.inject(:+)
end


a = [1, 2, 3, 4, 5]
puts sum_array(a)
