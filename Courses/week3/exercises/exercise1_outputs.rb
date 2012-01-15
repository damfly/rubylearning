#Week3 
#Exercise1 : 

#why is the output of this program:

def method
 a = 50
 puts a
puts a.object_id
end
a = 10
method
puts a
puts a.object_id


#=> 50
#=> 10
#
#Explanation : the variable a is used in two different context, one is the method "method" and the other is just a integer.
#So both variables "a" are two different object. This can be shown be applying the ?object_id method to both variables.
