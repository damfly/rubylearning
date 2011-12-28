
puts expand = expand.object_id

puts defined?(expand)? expand : "coucou"
#=> TRUE

puts

expand = defined?( expand ) ? expand : "coucou"
puts expand.object_id
#=> NIL
puts defined?(expand)
#=> Local_variable
puts expand.class
#=> NilClass 

puts

a = true
puts a
#=> true
puts defined?(a)
#=> local_variable
puts a.class
#=> TrueClass

puts nil

puts defined?( expand ) ? expand : true

puts

puts nil.object_id

