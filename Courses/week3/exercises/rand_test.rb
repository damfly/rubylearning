#Exercise4. Given the following Ruby code snippet:

#When you run this program, which of the following values will not be displayed?
#1929
#1930
#1945
#1950
#1951
#1952
#Explain why that value will not be displayed.


a = (1930...1951).to_a

#puts a[rand(a.size)]
#puts a.size
#puts a.last
#puts a[20]

#1951 will not be displayed because it is not included into the range AND, 
#furthermore, rand would give an integer 0 <= i < a.size-1
#Thus, rand(21) and Max rand(21) = 20 and a[20] = 1950



#Also, have a look at the splat operator:

a = [*1930...1951] # splat operator
puts a.inspect
puts a.length
puts a[rand(a.size)]
puts a.min
puts a.include?(1945)

#b = (1930...1951).to_a
#puts b.inspect
#uts a.max
#puts a.min
#puts a.include?(1929)
