#Exercise5. 
#Given a string s = 'key=value', create two strings s1 and s2 such that s1 contains 
#key and s2 contains value. Hint: Use some of the String functions.

key_value = 'name=damien'
key_value_a = key_value.split(/=/)
key = key_value_a[0]
value = key_value_a[1]

puts "The key is '#{key}' and the value is '#{value}'."
