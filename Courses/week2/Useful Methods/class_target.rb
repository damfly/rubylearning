puts false.class

def try 
if block_given? 
yield 
else 
puts "no block" 
end 
end 
try do puts "hello" end


str = 'ruby course'

#puts str.to_upper!
#str.upcase!
#str.uppercase!
#puts str.capitalize!
# tr.swapcase!
#

foo = 'bar'
puts '1:#{foo}'

puts 0.nonzero?

title = 'Programming Ruby'
price = 3_990
puts '"#{title}" is #{price} yen.'
x = gets

