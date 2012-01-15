=begin
Exercise8. Write a Ruby program that prints the numbers from 1 to 100. But for multiples of three print "Fizz"
instead of the number and for multiples of five print "Buzz". For numbers which are multiples of both three and 
five print "FizzBuzz". Discuss this in the FizzBuzz Forum.
=end


def fizzbuzz(collection)

  collection.each do |number|

    answer = ""
    if number % 3 == 0
      answer = "Fizz"     
    end
    
    if number % 5 == 0
      answer += "Buzz"     
    else
      answer = number.to_s
    end
  
    puts answer

  end

end

a = [*1..100]
fizzbuzz(a) 


