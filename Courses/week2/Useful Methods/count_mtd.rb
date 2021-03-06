=begin
  * Name: count_mtd.rb
  * Description : useful ruby String method : count  
  * Author: Damien HOULLE
  * Date: 27/12/201
=end

#The String count method counts the number of occurrences of any of a set of specified characters.
#Each string parameter defines a set of characters to count. The intersection of these sets defines the characters to count in str.

a = "Hello World"

#puts a.count "o"
#puts a.count "l"
#puts a.count "lo","o"
#puts a.count "ld"

b = "Damien Caroline"

#puts b.count "am", "a"

c = "abcdeffffghijkkk"
puts c
puts c.count 'fk'
puts c.count 'kf'
puts c.count 'f-k'
puts c.count 'fg'
puts c.count 'ij'
puts c.count 'ag'
