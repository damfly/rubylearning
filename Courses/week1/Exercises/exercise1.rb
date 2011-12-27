=begin
  * Name: exercise1.rb
  * Description : Exercise about precedence
  * Author: Damien HOULLE
  * Date: 25/12/2012
=end

y = false
z = true
x = y or z  
puts x # => FALSE
x = y || z
puts x # => TRUE
(x = y) or z 
puts x # => FALSE
x = (y or z)
puts x # => TRUE

# Learning : brackets have higher precedence over the assignement operators
# Learning 2 : Boolean operator, || has a higher precedence over the assignement operators (=)
# Learning 3 : "or" and "and" operators have lower precedence over the assignement operators (=)
